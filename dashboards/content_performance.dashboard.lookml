- dashboard: content_performance
  title: Content Performance
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Most viewed content
    name: Most viewed content
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: looker_grid
    fields: [datazoom_raw.content_group_title, datazoom_raw.Unique_Devices]
    filters:
      datazoom_raw.timestamp_date: 5 days
      datazoom_raw.content_group_title: "-NULL"
    sorts: [datazoom_raw.Unique_Devices desc]
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: []
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: Click to filter
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Content drop off
    name: Content drop off
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: looker_column
    fields: [datazoom_raw.playhead_position_bucket, datazoom_raw.streaming_type,
      datazoom_raw.video_type, datazoom_raw.count]
    filters:
      datazoom_raw.playhead_position_bucket: -"T00 (-inf,0.0)"
      datazoom_raw.event_type: Heartbeat
      datazoom_raw.timestamp_date: 7 days
      datazoom_raw.streaming_type: VOD
      datazoom_raw.video_type: Content
    sorts: [datazoom_raw.playhead_position_bucket, datazoom_raw.streaming_type,
      datazoom_raw.video_type]
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: []
    limit_displayed_rows_values:
      show_hide: hide
      first_last: last
      num_rows: '1'
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [datazoom_raw.streaming_type, datazoom_raw.video_type]
    show_null_points: true
    note_state: collapsed
    note_display: below
    note_text: Select content filter to refine
    listen: {}
    row: 11
    col: 0
    width: 8
    height: 6
  - title: Average viewing duration
    name: Average viewing duration
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: looker_line
    fields: [datazoom_raw.timestamp_date, datazoom_raw.Mins_From_heartbeat,
      datazoom_raw.Content_Views]
    fill_fields: [datazoom_raw.timestamp_date]
    filters:
      datazoom_raw.timestamp_date: 7 days
    sorts: [datazoom_raw.timestamp_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '5*${datazoom_raw.Mins_From_heartbeat}/${datazoom_raw.Content_Views}',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/New_York
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: []
    series_types: {}
    defaults_version: 1
    hidden_fields: [datazoom_raw.Content_Views, datazoom_raw.Mins_From_heartbeat]
    note_state: collapsed
    note_display: below
    note_text: Select content filter to refine
    listen: {}
    row: 23
    col: 0
    width: 8
    height: 6
  - title: Views per hour
    name: Views per hour
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: looker_line
    fields: [datazoom_raw.timestamp_date, datazoom_raw.timestamp_hour,
      datazoom_raw.Content_Views]
    filters:
      datazoom_raw.timestamp_date: 7 days
    sorts: [datazoom_raw.timestamp_hour]
    limit: 5000
    column_limit: 50
    query_timezone: America/New_York
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: []
    series_types: {}
    discontinuous_nulls: false
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [datazoom_raw.timestamp_date]
    row: 17
    col: 0
    width: 8
    height: 6
  - title: Minutes per user
    name: Minutes per user
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: looker_map
    fields: [datazoom_raw.Mins_From_heartbeat, datazoom_raw.Unique_Devices,
      datazoom_raw.country]
    filters:
      datazoom_raw.geolocation_bin_level: '6'
      datazoom_raw.timestamp_date: 30 days
      datazoom_raw.country: ''
      datazoom_raw.geolocation: inside box from 66.51326044311188,
        -270.00000000000006 to -66.51326044311186, 270.00000000000006
    sorts: [datazoom_raw.Unique_Devices desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: minutes_per_user, label: Minutes per user,
        expression: "${datazoom_raw.Mins_From_heartbeat}/${datazoom_raw.Unique_Devices}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/New_York
    map_plot_mode: automagic_heatmap
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light_no_labels
    map_position: custom
    map_scale_indicator: imperial
    map_pannable: true
    map_zoomable: true
    map_marker_type: icon
    map_marker_icon_name: default
    map_marker_radius_mode: fixed
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    map_latitude: 21.453068633086783
    map_longitude: 2.8125
    map_zoom: 2
    map_marker_radius_fixed: 15
    map_marker_color: [ffffffff]
    map_value_scale_clamp_max:
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [jw_table.Minutes_Watched_Ads, jw_table.Minutes_Watched_Content,
      datazoom_raw.Mins_From_heartbeat, datazoom_raw.Unique_Devices]
    defaults_version: 1
    series_types: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: []
    listen: {}
    row: 6
    col: 8
    width: 16
    height: 16
  - title: Content Required Datazoom Events
    name: Content Required Datazoom Events
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: looker_grid
    fields: [datazoom_raw.timestamp_date, datazoom_raw.Playback_Start,
      datazoom_raw.Heartbeats, datazoom_raw.Unique_Devices,
      datazoom_raw.Content_Titles]
    fill_fields: [datazoom_raw.timestamp_date]
    filters:
      datazoom_raw.timestamp_date: 1 days
      datazoom_raw.event_type: '"Playback_Start",Heartbeat'
    sorts: [datazoom_raw.timestamp_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: error, label: Error, expression: 'sum(${datazoom_raw.Views_with_error})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {table_calculation: ad_error, label: Ad
          Error, expression: 'sum(${datazoom_raw.Views_with_ad_error})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    pinned_columns:
      measure: left
    column_order: {}
    show_totals: true
    show_row_totals: true
    series_labels: {}
    series_column_widths: {}
    series_cell_visualizations:
      datazoom_raw.Views_with_error:
        is_active: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    conditional_formatting: [{type: equal to, value: 0, background_color: "#B32F37",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 0, background_color: "#72D16D",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: []
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    value_labels: legend
    label_type: labPer
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    up_color: "#3EB0D5"
    down_color: "#B1399E"
    total_color: "#C2DD67"
    truncate_column_names: false
    row: 7
    col: 0
    width: 8
    height: 4
  - title: Most viewed episode
    name: Most viewed episode
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: looker_grid
    fields: [datazoom_raw.Unique_Devices, datazoom_raw.content_title]
    filters:
      datazoom_raw.timestamp_date: 5 days
      datazoom_raw.content_group_title: "-NULL"
    sorts: [datazoom_raw.Unique_Devices desc]
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: []
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: Click to filter
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 6
  - name: README
    type: text
    title_text: README
    subtitle_text: Used by content producers and curators
    body_text: |
      This dashboard communicates how users are consuming specific content titles.

      Click on the *Most viewed content* to filter by series, and *Most viewed episode* to filter by episode.

      **What can we learn?**

      For a specific content title, we can:

      * Understand at what point during playback, users abandoned playback. Use this information to create content that keeps users watching.
      * See on the map, how many minutes on average are being consumed. Use this to target curation to the regions most appropriate.
      * Time and date the content was most frequently viewed. Use this to time content release and marketing.
    row: 0
    col: 0
    width: 8
    height: 7