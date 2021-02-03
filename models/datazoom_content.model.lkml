connection: "@{CONNECTION_NAME}"

# include all the views
include: "/views/**/*.view"

# include all the dashboards
include: "/dashboards/**/*.dashboard"


datagroup: datazoom_content_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: datazoom_content_default_datagroup

explore: datazoom_raw {}

explore: affinity {
  label: "Affinity Analysis"

  always_filter: {
    filters: {
      field: affinity.content_b
      value: "-NULL"
    }
  }
}
