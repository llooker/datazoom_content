view: views_with_play_request {
  derived_table: {
    explore_source: datazoom_raw {
      column: view_id {}
      filters: {
        field: datazoom_raw.event_type
        value: "Play_Request"
      }
    }
  }
  dimension: view_id {}
}