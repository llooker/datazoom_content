- dashboard: data_supervision
  title: Data Supervision
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Missing play requests
    name: Missing play requests
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_playback_start
    type: single_value
    fields: [datazoom_raw.timestamp_date, datazoom_raw.supervision_missing_play_request]
    pivots: [datazoom_raw.timestamp_date]
    fill_fields: [datazoom_raw.timestamp_date]
    filters:
      datazoom_raw.timestamp_date: 2 days
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    listen:
      OS: datazoom_raw.os
      Dz Sdk Version: datazoom_raw.dz_sdk_version
      Browser: datazoom_raw.browser
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Missing Ad Break Starts
    name: Missing Ad Break Starts
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_adbreak_end
    type: single_value
    fields: [datazoom_raw.timestamp_date, datazoom_raw.supervision_missing_ad_break_starts]
    pivots: [datazoom_raw.timestamp_date]
    fill_fields: [datazoom_raw.timestamp_date]
    filters:
      datazoom_raw.timestamp_date: 2 days
    sorts: [datazoom_raw.timestamp_date desc]
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    listen:
      OS: datazoom_raw.os
      Dz Sdk Version: datazoom_raw.dz_sdk_version
      Browser: datazoom_raw.browser
    row: 0
    col: 16
    width: 8
    height: 6
  - title: QoE required events
    name: QoE required events
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_play_request
    type: looker_grid
    fields: [datazoom_raw.timestamp_date, datazoom_raw.Views_with_error,
      datazoom_raw.Views_with_ad_error, datazoom_raw.Play_Request,
      datazoom_raw.Buffer_End, datazoom_raw.Buffer_Start,
      datazoom_raw.Playback_Start]
    fill_fields: [datazoom_raw.timestamp_date]
    filters:
      datazoom_raw.timestamp_date: 1 days
      datazoom_raw.event_type: '"Ad_Error",Error,"Play_Request","Playback_Start","Buffer_start","Buffer_End"'
    sorts: [error desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: error, label: Error, expression: 'sum(${datazoom_raw.Views_with_error})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: ad_error, label: Ad Error, expression: 'sum(${datazoom_raw.Views_with_ad_error})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
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
    column_order: [measure, '2020-11-17']
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
    hidden_fields: [datazoom_raw.Views_with_error, datazoom_raw.Views_with_ad_error]
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
    listen:
      OS: datazoom_raw.os
      Dz Sdk Version: datazoom_raw.dz_sdk_version
      Browser: datazoom_raw.browser
    row: 6
    col: 8
    width: 8
    height: 5
  - title: Ads required Datazoom events
    name: Ads required Datazoom events
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_adbreak_start
    type: looker_grid
    fields: [datazoom_raw.timestamp_date, datazoom_raw.Ad_Break_Ends,
      datazoom_raw.Ad_Break_Starts, datazoom_raw.Ad_Clicks,
      datazoom_raw.Ad_Completes, datazoom_raw.Ad_Impressions,
      datazoom_raw.Ad_Requests, datazoom_raw.Ad_Loadeds]
    fill_fields: [datazoom_raw.timestamp_date]
    filters:
      datazoom_raw.timestamp_date: 1 days
    sorts: [datazoom_raw.timestamp_date desc]
    limit: 500
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
    show_sql_query_menu_options: false
    pinned_columns:
      measure: left
    column_order: [measure, "$$$_row_numbers_$$$", '2020-11-17']
    show_totals: true
    show_row_totals: true
    series_labels:
      datazoom_raw.Ad_Break_Ends: Ad Break End
      datazoom_raw.Ad_Break_Starts: Ad Break Start
      datazoom_raw.Ad_Clicks: Ad Click
      datazoom_raw.Ad_Completes: Ad Complete
      datazoom_raw.Ad_Impressions: Ad Impression
      datazoom_raw.Ad_Requests: Ad Request
      datazoom_raw.Ad_Loadeds: Ad Loaded
    series_cell_visualizations:
      datazoom_raw.Unique_Devices:
        is_active: false
    conditional_formatting: [{type: equal to, value: 0, background_color: "#B32F37",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 0, background_color: "#72D16D",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    hidden_fields:
    listen:
      OS: datazoom_raw.os
      Dz Sdk Version: datazoom_raw.dz_sdk_version
      Browser: datazoom_raw.browser
    row: 6
    col: 0
    width: 8
    height: 5
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
    listen:
      OS: datazoom_raw.os
      Dz Sdk Version: datazoom_raw.dz_sdk_version
      Browser: datazoom_raw.browser
    row: 6
    col: 16
    width: 8
    height: 5
  - name: README
    type: text
    title_text: README
    subtitle_text: Used by data engineers
    body_text: |-
      Use this dashboard to identify missing events and data inconsistencies.

      Required datazoom events can be turned on through the Datazoom dashboard https://app.datazoom.io/

      Any identified inconsistencies will require engineering collaboration between Datazoom and the customer.

      Use OS, browser and SDK filters to narrow down data inconsistencies, and help engineers debug more effeciently.
    row: 0
    col: 0
    width: 8
    height: 6
  - title: First 5 events in stream
    name: First 5 events in stream
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: looker_donut_multiples
    fields: [datazoom_raw.event_count, datazoom_raw.event_type,
      datazoom_raw.count]
    pivots: [datazoom_raw.event_type]
    filters:
      datazoom_raw.event_count: '1,2,3,4,5'
    sorts: [datazoom_raw.event_count, datazoom_raw.event_type
        0]
    limit: 500
    query_timezone: America/New_York
    show_value_labels: false
    font_size: 12
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
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen:
      OS: datazoom_raw.os
      Dz Sdk Version: datazoom_raw.dz_sdk_version
      Browser: datazoom_raw.browser
    row: 11
    col: 0
    width: 8
    height: 10
  filters:
  - name: OS
    title: OS
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: datazoom_content
    explore: views_with_playback_start
    listens_to_filters: []
    field: datazoom_raw.os
  - name: Dz Sdk Version
    title: Dz Sdk Version
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: datazoom_content
    explore: views_with_playback_start
    listens_to_filters: []
    field: datazoom_raw.dz_sdk_version
  - name: Browser
    title: Browser
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: datazoom_content
    explore: views_with_playback_start
    listens_to_filters: []
    field: datazoom_raw.browser
