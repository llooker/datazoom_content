#should only look at views with playback start

view: views_with_adbreak_start {
  derived_table: {
    explore_source: datazoom_raw {
      column: view_id {}
      filters: {
        field: datazoom_raw.event_type
        value: "Ad_Break_Start"
      }
    }
  }
  dimension: view_id {}
}