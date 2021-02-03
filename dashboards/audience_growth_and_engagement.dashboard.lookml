- dashboard: audience_growth_and_engagement
  title: Audience Growth and Engagement
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Audience OS distribution
    name: Audience OS distribution
    model: "@{LOOKER_MODEL_NAME}"
    explore: viewing_users
    type: looker_pie
    fields: [datazoom_raw.Unique_Devices, datazoom_raw.os]
    filters:
      datazoom_raw.event_type: Heartbeat
      datazoom_raw.timestamp_date: 7 days
      datazoom_raw.os: -"-"
    sorts: [datazoom_raw.Unique_Devices desc]
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    value_labels: legend
    label_type: labPer
    inner_radius: 40
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
    limit_displayed_rows_values:
      show_hide: hide
      first_last: last
      num_rows: '14'
    legend_position: center
    series_types: {}
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
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Concurrent users shape of day
    name: Concurrent users shape of day
    model: "@{LOOKER_MODEL_NAME}"
    explore: viewing_users
    type: looker_line
    fields: [datazoom_raw.timestamp_date, datazoom_raw.Unique_Devices,
      datazoom_raw.timestamp_hour, datazoom_raw.content_type]
    pivots: [datazoom_raw.content_type]
    filters:
      datazoom_raw.timestamp_date: 1 days
    sorts: [datazoom_raw.timestamp_hour, datazoom_raw.content_type]
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
    listen: {}
    row: 12
    col: 0
    width: 8
    height: 6
  - title: Location Density Granular
    name: Location Density Granular
    model: "@{LOOKER_MODEL_NAME}"
    explore: viewing_users
    type: looker_map
    fields: [datazoom_raw.geolocation, datazoom_raw.Unique_Devices]
    filters:
      datazoom_raw.geolocation_bin_level: '6'
    sorts: [datazoom_raw.geolocation]
    limit: 5000
    column_limit: 50
    query_timezone: America/New_York
    map_plot_mode: automagic_heatmap
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light_no_labels
    map_position: fit_data
    map_scale_indicator: metric
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
    map_latitude: 27.839076094777816
    map_longitude: -0.17578125
    map_zoom: 2
    map_marker_radius_fixed: 15
    map_marker_color: [ffffffff]
    map_value_colors: []
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
    hidden_fields: [jw_table.Minutes_Watched_Ads, jw_table.Minutes_Watched_Content]
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
    listen:
      date: datazoom_raw.timestamp_date
      Country: datazoom_raw.country
    row: 24
    col: 16
    width: 8
    height: 6
  - title: Average 7 day stickiness
    name: Average 7 day stickiness
    model: "@{LOOKER_MODEL_NAME}"
    explore: viewing_users
    type: single_value
    fields: [viewing_users.date_date, viewing_users.user_count_active_this_day, viewing_users.user_count_active_30_days]
    fill_fields: [viewing_users.date_date]
    filters:
      viewing_users.date_date: 8 days ago for 7 days
    sorts: [viewing_users.date_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: stickiness, label: Stickiness, expression: "${viewing_users.user_count_active_this_day}/${viewing_users.user_count_active_30_days}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: stickiness_2, label: Stickiness,
        expression: 'mean(${stickiness})', value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, _type_hint: number}]
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: ccba75a3-58c7-4b9c-a931-4ffc59e79cba
      options:
        steps: 5
    custom_color: "#B32F37"
    conditional_formatting: [{type: greater than, value: 0.2, background_color: !!null '',
        font_color: "#72D16D", color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 0.1,
        background_color: !!null '', font_color: "#FFD95F", color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688}, bold: false, italic: false,
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
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: false
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
    hidden_fields: [viewing_users.user_count_active_this_day, viewing_users.user_count_active_30_days,
      viewing_users.date_date, stickiness]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 6
    col: 8
    width: 8
    height: 6
  - title: Location density country
    name: Location density country
    model: "@{LOOKER_MODEL_NAME}"
    explore: viewing_users
    type: looker_map
    fields: [datazoom_raw.Unique_Devices, datazoom_raw.country]
    filters:
      datazoom_raw.timestamp_date: 7 days
      datazoom_raw.geolocation_bin_level: '8'
      datazoom_raw.geolocation: inside box from 85.0511287798066, -180
        to -66.51326044311186, 180
    sorts: [datazoom_raw.Unique_Devices desc]
    limit: 5000
    column_limit: 50
    query_timezone: America/New_York
    map_plot_mode: automagic_heatmap
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light_no_labels
    map_position: custom
    map_scale_indicator: metric
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
    map_latitude: 10.14193168613103
    map_longitude: 25.839843750000004
    map_zoom: 2
    map_marker_radius_fixed: 15
    map_marker_color: [ffffffff]
    map_value_colors: []
    map_value_scale_clamp_max: 5000
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
    hidden_fields: [jw_table.Minutes_Watched_Ads, jw_table.Minutes_Watched_Content]
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
    row: 18
    col: 0
    width: 16
    height: 12
  - title: Weekly Users by Refferer
    name: Weekly Users by Refferer
    model: "@{LOOKER_MODEL_NAME}"
    explore: viewing_users
    type: looker_bar
    fields: [datazoom_raw.Unique_Devices, datazoom_raw.referrer_url]
    filters:
      datazoom_raw.timestamp_date: 7 days
      datazoom_raw.referrer_url: "-NULL,-EMPTY"
    sorts: [datazoom_raw.Unique_Devices desc]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: datazoom_raw.Unique_Devices,
            id: datazoom_raw.Unique_Devices, name: Unique Devices}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: log}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    defaults_version: 1
    row: 18
    col: 16
    width: 8
    height: 6
  - title: Engagement category
    name: Engagement category
    model: "@{LOOKER_MODEL_NAME}"
    explore: viewing_users
    type: looker_area
    fields: [viewing_users.date_date, viewing_users.user_count_dormant_7_days, viewing_users.user_count_multiple_weeks,
      viewing_users.user_count_new_7_days]
    fill_fields: [viewing_users.date_date]
    filters:
      viewing_users.date_date: 30 days ago for 30 days
    sorts: [viewing_users.user_count_multiple_weeks desc]
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
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen: {}
    row: 12
    col: 8
    width: 8
    height: 6
  - title: Engagement category distribution
    name: Engagement category distribution
    model: "@{LOOKER_MODEL_NAME}"
    explore: viewing_users
    type: looker_pie
    fields: [viewing_users.weekly_engagement_category, datazoom_raw.Unique_Devices]
    filters:
      viewing_users.date_date: yesterday
      viewing_users.weekly_engagement_category: "-Historical Churn"
    sorts: [datazoom_raw.Unique_Devices desc]
    limit: 500
    query_timezone: America/New_York
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    series_colors:
      viewing_users.user_count_dormant_7_days: "#B32F37"
      viewing_users.user_count_multiple_weeks: "#3EB0D5"
      viewing_users.user_count_new_7_days: "#C2DD67"
      New: "#C2DD67"
      Dormant: "#B32F37"
      Engaged: "#3EB0D5"
    show_value_labels: true
    font_size: 0
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
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    defaults_version: 1
    hidden_fields:
    up_color: "#3EB0D5"
    down_color: "#B1399E"
    total_color: "#C2DD67"
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 6
  - name: Readme
    type: text
    title_text: Readme
    subtitle_text: This dashboard is to be used by product and marketing teams.
    body_text: |-
      This dashboard describes when, where, what frequency, and for how long users are watching content on our platform. It categorizes users by their location, device and behavior.

      Click on any pie chart or map to filter the entire dashboard by that user cohort.

      <br /><br />
      **Definitions**

      * Stickiness: the percentage of the monthly user base that is active each day.
      * New Users: first active in the past week.
      * Engaged Users: active both in the past week and two weeks ago.
      * Dormant Users: Active two weeks ago but not active in the past week.

      <br />

      **Tips for success**

      1. Engaged users are the most valuable, we want the ratio of Engaged users to increase. A good goal is 50%
      2. Stickiness is another indicator of engagement level, a good goal is 20%
      3. Try various filters to see which countries and device types could use additional marketing, and what time is preferable to drive growth, or existing users back to the platform.
    row: 0
    col: 0
    width: 8
    height: 12
  - title: Engagement category Growth
    name: Engagement category Growth
    model: "@{LOOKER_MODEL_NAME}"
    explore: viewing_users
    type: looker_area
    fields: [viewing_users.date_date, viewing_users.user_count_dormant_7_days, viewing_users.user_count_multiple_weeks,
      viewing_users.user_count_new_7_days]
    fill_fields: [viewing_users.date_date]
    filters:
      viewing_users.date_date: 30 days ago for 30 days
    sorts: [viewing_users.user_count_multiple_weeks desc]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen: {}
    row: 12
    col: 16
    width: 8
    height: 6
  - title: Median Session Length in Minutes
    name: Median Session Length in Minutes
    model: "@{LOOKER_MODEL_NAME}"
    explore: viewing_users
    type: single_value
    fields: [datazoom_raw.timestamp_date, datazoom_raw.median_session_length]
    fill_fields: [datazoom_raw.timestamp_date]
    filters:
      datazoom_raw.timestamp_date: 12 hours
    sorts: [datazoom_raw.timestamp_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: minutes, label: Minutes, expression: "${datazoom_raw.median_session_length}/30000",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
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
    y_axes: []
    series_types: {}
    defaults_version: 1
    hidden_fields: [datazoom_raw.median_session_length]
    listen: {}
    row: 6
    col: 16
    width: 8
    height: 6