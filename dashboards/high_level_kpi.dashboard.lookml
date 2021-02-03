- dashboard: high_level_kpi
  title: High Level KPI
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Daily Viewing Users
    name: Daily Viewing Users
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: looker_line
    fields: [datazoom_raw.timestamp_date, datazoom_raw.Unique_Devices]
    fill_fields: [datazoom_raw.timestamp_date]
    sorts: [datazoom_raw.timestamp_date desc]
    limit: 500
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
    defaults_version: 1
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 12
    col: 0
    width: 8
    height: 6
  - title: Daily Minutes
    name: Daily Minutes
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: looker_line
    fields: [datazoom_raw.Mins_From_heartbeat, datazoom_raw.timestamp_date]
    fill_fields: [datazoom_raw.timestamp_date]
    filters:
      datazoom_raw.timestamp_date: 7 days
    sorts: [datazoom_raw.timestamp_date desc]
    limit: 500
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
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 12
    col: 8
    width: 8
    height: 6
  - title: Daily Ad Impressions
    name: Daily Ad Impressions
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: looker_line
    fields: [datazoom_raw.timestamp_date, datazoom_raw.Ad_Impressions]
    fill_fields: [datazoom_raw.timestamp_date]
    filters:
      datazoom_raw.timestamp_date: 20 days
    sorts: [datazoom_raw.timestamp_date desc]
    limit: 500
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
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 12
    col: 16
    width: 8
    height: 6
  - title: Monthly Viewing Users
    name: Monthly Viewing Users
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: single_value
    fields: [datazoom_raw.Unique_Devices, datazoom_raw.30_day_window]
    pivots: [datazoom_raw.30_day_window]
    filters:
      datazoom_raw.30_day_window: "-Historical"
    sorts: [datazoom_raw.30_day_window]
    limit: 500
    dynamic_fields: [{table_calculation: change_from_previous, label: Change from
          previous, expression: "(${datazoom_raw.Unique_Devices} /\
          \ pivot_offset(${datazoom_raw.Unique_Devices}, 1)) - 1",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields:
    series_types: {}
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Monthly Minutes
    name: Monthly Minutes
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: single_value
    fields: [datazoom_raw.30_day_window, datazoom_raw.Mins_From_heartbeat]
    pivots: [datazoom_raw.30_day_window]
    filters:
      datazoom_raw.30_day_window: "-Historical"
    sorts: [datazoom_raw.30_day_window]
    limit: 500
    dynamic_fields: [{table_calculation: change_from_previous, label: Change from
          previous, expression: "(${datazoom_raw.Mins_From_heartbeat}\
          \ / pivot_offset(${datazoom_raw.Mins_From_heartbeat}, 1))\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields:
    series_types: {}
    show_null_points: true
    interpolation: linear
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Monthly Ad Impressions
    name: Monthly Ad Impressions
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: single_value
    fields: [datazoom_raw.30_day_window, datazoom_raw.Ad_Impressions]
    pivots: [datazoom_raw.30_day_window]
    filters:
      datazoom_raw.30_day_window: "-Historical"
    sorts: [datazoom_raw.30_day_window]
    limit: 500
    dynamic_fields: [{table_calculation: change_from_previous, label: Change from
          previous, expression: "(${datazoom_raw.Ad_Impressions} /\
          \ pivot_offset(${datazoom_raw.Ad_Impressions}, 1)) - 1",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields:
    series_types: {}
    show_null_points: true
    interpolation: linear
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Viewing user stickiness
    name: Viewing user stickiness
    model: "@{LOOKER_MODEL_NAME}"
    explore: viewing_users
    type: looker_scatter
    fields: [viewing_users.date_date, viewing_users.user_count_active_this_day, viewing_users.user_count_active_30_days]
    fill_fields: [viewing_users.date_date]
    filters:
      viewing_users.date_date: 30 days
    sorts: [viewing_users.user_count_active_this_day desc]
    limit: 500
    dynamic_fields: [{table_calculation: stickiness, label: Stickiness, expression: "${viewing_users.user_count_active_this_day}/${viewing_users.user_count_active_30_days}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
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
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: ccba75a3-58c7-4b9c-a931-4ffc59e79cba
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: stickiness, id: stickiness,
            name: Stickiness}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: last
      num_rows: '7'
    series_types: {}
    series_colors:
      stickiness: "#777777"
    label_color: []
    reference_lines: [{reference_type: range, range_start: max, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: left, color: "#72D16D",
        line_value: '0.2', label: Good, range_end: '0.2'}, {reference_type: range,
        line_value: mean, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: left, color: "#FFD95F", range_start: '0.2', range_end: '0.1',
        label: Okay}, {reference_type: range, line_value: mean, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: left, color: "#B32F37",
        range_start: '0.1', range_end: '0', label: Bad}]
    interpolation: linear
    defaults_version: 1
    hidden_fields: [viewing_users.user_count_active_this_day, viewing_users.user_count_active_30_days]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Weekly viewing users
    name: Weekly viewing users
    model: "@{LOOKER_MODEL_NAME}"
    explore: viewing_users
    type: looker_line
    fields: [viewing_users.date_date, viewing_users.user_count_active_7_days]
    fill_fields: [viewing_users.date_date]
    filters:
      viewing_users.date_date: 4 weeks ago for 8 weeks
    sorts: [viewing_users.date_date]
    limit: 500
    dynamic_fields: [{table_calculation: day_index, label: Day index, expression: 'diff_days(${viewing_users.date_date},now())',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: number}, {table_calculation: slope, label: Slope, expression: 'slope(${viewing_users.user_count_active_7_days},
          ${day_index})', value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: intercept, label: Intercept, expression: 'intercept(${viewing_users.user_count_active_7_days},
          ${day_index})', value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: forecast, label: Forecast, expression: "${slope}\
          \ * ${day_index} + ${intercept}", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}]
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
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    defaults_version: 1
    hidden_fields: [slope, intercept]
    row: 6
    col: 0
    width: 8
    height: 6
  - name: README
    type: text
    title_text: README
    subtitle_text: Used by Execs for a high level overview
    body_text: |-
      This dashboard only shows general platform performance, including growth, engagement, and revenue indicators.

      Click on any of the top line measures to dive into the relevant granular dashboards.
    row: 6
    col: 8
    width: 8
    height: 6