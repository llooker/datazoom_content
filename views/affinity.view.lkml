view: affinity {
  derived_table: {
    persist_for: "24 hours"
    sql: SELECT
        content_a
        , content_b
        , joint_user_plays
        , joint_session_plays
        , top1.plays AS content_a_plays
        , top2.plays AS content_b_plays

      FROM
          (
              SELECT
                up1.content AS content_a
                , up2.content AS content_b
                , COUNT(*) AS joint_user_plays
              FROM ${user_watch_content.SQL_TABLE_NAME} AS up1
              LEFT JOIN ${user_watch_content.SQL_TABLE_NAME} AS up2
                ON up1.user_id = up2.user_id
                AND up1.content <> up2.content
              GROUP BY content_a, content_b
          ) AS juf

      LEFT JOIN
          (
              SELECT
                op1.content AS ocontent_a
                , op2.content AS ocontent_b
                , COUNT(*) AS joint_session_plays
              FROM ${user_watch_content.SQL_TABLE_NAME} op1
              LEFT JOIN ${user_watch_content.SQL_TABLE_NAME} op2
                ON op1.session_id = op2.session_id
                AND op1.content <> op2.content
              GROUP BY ocontent_a, ocontent_b
          ) AS jof

        ON jof.ocontent_a = juf.content_a
        AND jof.ocontent_a = juf.content_b
      LEFT JOIN ${total_watch_content.SQL_TABLE_NAME} top1
        ON top1.content = juf.content_a
      LEFT JOIN ${total_watch_content.SQL_TABLE_NAME} top2
        ON top2.content = juf.content_b
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: content_a {
    sql: ${TABLE}.content_a ;;
  }

  dimension: content_b {
    sql: ${TABLE}.content_b ;;
  }

  dimension: joint_user_plays {
    description: "The number of users who have played both content a and content b"
    type: number
    sql: ${TABLE}.joint_user_plays ;;
  }

  dimension: joint_session_plays {
    description: "The number of sessions that include both content a and content b playback"
    type: number
    sql: ${TABLE}.joint_session_plays ;;
  }

  dimension: content_a_plays {
    description: "The total number of times content a has been played"
    type: number
    sql: ${TABLE}.content_a_plays ;;
  }

  dimension: content_b_plays {
    description: "The total number of times content b has been played"
    type: number
    sql: ${TABLE}.content_b_plays ;;
  }

  dimension: user_affinity {
    hidden: yes
    type: number
    sql: 1.0*${joint_user_plays}/NULLIF((${content_a_plays}+${content_b_plays})-(${joint_user_plays}),0) ;;
    value_format_name: percent_2
  }

  dimension: session_affinity {
    hidden: yes
    type: number
    sql: 1.0*${joint_session_plays}/NULLIF((${content_a_plays}+${content_b_plays})-(${joint_session_plays}),0) ;;
    value_format_name: percent_2
  }

  measure: avg_user_affinity {
    label: "Affinity Score (by User History)"
    description: "Percentage of users that played both content weighted by how many times each content was played individually"
    type: average
    sql: 100.0 * ${user_affinity} ;;
    value_format_name: decimal_2
  }

  measure: avg_order_affinity {
    label: "Affinity Score (by Session)"
    description: "Percentage of sessions that played both content weighted by how many times each content was played individually"
    type: average
    sql: 100.0 * ${session_affinity} ;;
    value_format_name: decimal_2
  }

  measure: combined_affinity {
    type: number
    sql: ${avg_user_affinity} + ${avg_order_affinity} ;;
  }

  set: detail {
    fields: [content_a,content_b,user_affinity,session_affinity]
  }
}



#############################################
#Table that aggregates the content watched by user and session
view: user_watch_content {
  derived_table: {
    persist_for: "24 hours"


    sql:    SELECT

            device_id as user_id, contentGroupTitle as content, session_id

          FROM datazoom_raw

          GROUP BY 1, 2, 3;;



    }


#   measure: count {
#     type: count
#     drill_fields: [detail*]
#   }

    dimension: user_id {
      type: number
      sql: ${TABLE}.user_id ;;
    }

    dimension: content {
      type: number
      sql: ${TABLE}.content ;;
    }

    dimension: session_id {
      type: number
      sql: ${TABLE}.session_id ;;
    }
  }

#################################################
#Table to count the total times content has been played (and for how long)
  view: total_watch_content{
    derived_table: {
      persist_for: "24 hours"
      sql:    SELECT

            contentGroupTitle as content
            , SUM(CASE WHEN event_type = "Playback_Start" and videoType="Content" THEN 1 END) AS plays
            , SUM(CASE WHEN event_type = 'Heartbeat' THEN 1 END) AS heartbeats

            FROM datazoom_raw

            GROUP BY 1;;
    }


#   measure: count {
#     type: count
#     drill_fields: [detail*]
#   }

    dimension: content {
      sql: ${TABLE}.prod_id ;;
    }

    dimension: plays {
      type: number
      sql: ${TABLE}.plays ;;
    }

    dimension: heartbeats {
      type: number
      sql: ${TABLE}.heartbeats ;;
    }
  }