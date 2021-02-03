view: views_with_adbreak_end {
  derived_table: {
    explore_source: datazoom_raw {
      column: view_id {}
      filters: {
        field: datazoom_raw.event_type
        value: "Ad_Break_End"
      }
    }
  }
  dimension: view_id {}
}