
view: viewing_users {

  derived_table: {

    #sql_trigger_value: SELECT CURRENT_DATE();;
    persist_for: "24 hours"



    sql: WITH daily_use AS (

                  SELECT

                    device_id as user_id

                    , cast(TIMESTAMP_TRUNC(timestamp,day) as date) as activity_date

                  FROM ${datazoom_raw.SQL_TABLE_NAME}

                  GROUP BY 1, 2

                  )



                  SELECT

                    daily_use.user_id

                   , wd.date as date

                   , MIN( DATE_DIFF(wd.date, daily_use.activity_date, day) ) as days_since_last_action

                    , MAX( DATE_DIFF(wd.date, daily_use.activity_date, day) ) as days_since_first_action

                  FROM ${dates.SQL_TABLE_NAME} AS wd

                  CROSS JOIN daily_use

                    WHERE wd.date BETWEEN daily_use.activity_date AND DATE_ADD(daily_use.activity_date, INTERVAL 30 DAY)

                  GROUP BY 1,2

                    ;;

    }



    dimension_group: date {

      type: time

      timeframes: [date,month,quarter,quarter_of_year,year,raw]

      sql: CAST( ${TABLE}.date AS TIMESTAMP);;

    }



    dimension: user_id {

      type: number

      sql: ${TABLE}.user_id ;;

    }



    dimension: days_since_last_action {

      type: number

      sql: ${TABLE}.days_since_last_action ;;

      value_format_name: decimal_0

    }

    dimension: days_since_first_action {

      type: number

      sql: ${TABLE}.days_since_first_action ;;

      value_format_name: decimal_0

    }

    dimension: first_active_last_7_days {

      type: yesno

      sql: ${days_since_first_action} < 7 ;;

    }

    dimension: first_active_over_7_days {

      type: yesno

      sql: ${days_since_first_action} > 7 ;;

    }

    dimension: not_active_last_7_days {

      type: yesno

      sql: ${days_since_last_action} > 7 ;;

    }

    dimension: last_active_last_week{

      type: yesno

      sql: ${days_since_last_action} > 7 and ${days_since_last_action} < 14 ;;

    }



    dimension: active_this_day {

      type: yesno

      sql: ${days_since_last_action} < 1 ;;

    }



    dimension: active_last_7_days {

      type: yesno

      sql: ${days_since_last_action} < 7 ;;

    }


    dimension: active_multiple_weeks{

      type: yesno

      sql: ${active_last_7_days} and ${first_active_over_7_days};;

    }

    dimension: weekly_engagement_category{

      case: {
        when: {
          sql: ${active_multiple_weeks};;
          label: "Engaged"
        }
        when: {
          sql: ${last_active_last_week};;
          label: "Dormant"
        }
        when: {
          sql: ${first_active_last_7_days};;
          label: "New"
        }
        else:  "Historical Churn"

      }
    }


    measure: user_count_active_30_days {

      label: "Monthly Viewing Users"

      type: count_distinct

      sql: ${user_id} ;;


    }



    measure: user_count_active_this_day {

      label: "Daily Viewing Users"

      type: count_distinct

      sql: ${user_id} ;;



      filters: {

        field: active_this_day

        value: "yes"

      }

    }



    measure: user_count_active_7_days {

      label: "Weekly Viewing Users"

      type: count_distinct

      sql: ${user_id} ;;



      filters: {

        field: active_last_7_days

        value: "yes"

      }

    }

    measure: user_count_new_7_days {

      label: "Weekly New Users"

      type: count_distinct

      sql: ${user_id} ;;



      filters: {

        field: first_active_last_7_days

        value: "yes"

      }
    }

    measure: user_count_dormant_7_days {

      label: "Weekly Dormant Users"

      type: count_distinct

      sql: ${user_id} ;;



      filters: {

        field: last_active_last_week

        value: "yes"

      }
    }

    measure: user_count_multiple_weeks {

      label: "Weekly Engaged Users"

      type: count_distinct

      sql: ${user_id} ;;



      filters: {

        field: active_multiple_weeks

        value: "yes"

      }

    }

  }
