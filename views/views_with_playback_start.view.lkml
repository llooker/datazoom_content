view: views_with_playback_start {
  derived_table: {
    explore_source: datazoom_raw {
      column: view_id {}
      filters: {
        field: datazoom_raw.event_type
        value: "Playback_Start"
      }
    }
  }
  dimension: view_id {}
}