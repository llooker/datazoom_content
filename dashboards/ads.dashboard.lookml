- dashboard: ads
  title: Ads
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
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
    listen: {}
    row: 9
    col: 4
    width: 4
    height: 5
  - title: Ad tolerance By Country
    name: Ad tolerance By Country
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_adbreak_start
    type: looker_map
    fields: [datazoom_raw.country, datazoom_raw.Ad_Tollerance,
      datazoom_raw.Distinct_Ad_Break_Ends, datazoom_raw.Distinct_Ad_Break_Starts]
    filters:
      datazoom_raw.geolocation: inside box from 85.0511287798066, -270.00000000000006
        to -66.51326044311186, 180
      datazoom_raw.timestamp_date: 7 days
      datazoom_raw.country: "-EMPTY"
    sorts: [datazoom_raw.Ad_Tollerance desc]
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
    map_latitude: 19.642587534013032
    map_longitude: -3.8671875000000004
    map_zoom: 2
    map_marker_radius_fixed: 15
    map_marker_color: [ffffffff]
    map_value_scale_clamp_min: 0.8
    map_value_scale_clamp_max: 1
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
    row: 14
    col: 0
    width: 16
    height: 13
  - title: Ad Tolerance
    name: Ad Tolerance
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_adbreak_start
    type: single_value
    fields: [datazoom_raw.Ad_Tollerance]
    filters:
      datazoom_raw.event_type: ''
      datazoom_raw.timestamp_date: 7 days
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_fields: []
    series_types: {}
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    y_axes: []
    listen: {}
    row: 9
    col: 8
    width: 8
    height: 5
  - title: Impressions by Ad System
    name: Impressions by Ad System
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_adbreak_start
    type: looker_grid
    fields: [datazoom_raw.Ad_Impressions, datazoom_raw.ad_system]
    filters:
      datazoom_raw.timestamp_date: 30 days
      datazoom_raw.ad_system: "-NULL"
    sorts: [datazoom_raw.Ad_Impressions desc]
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
    limit_displayed_rows: false
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 4
    col: 16
    width: 8
    height: 4
  - title: Impresions by Ad ID
    name: Impresions by Ad ID
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_adbreak_start
    type: looker_grid
    fields: [datazoom_raw.Ad_Impressions, datazoom_raw.ad_id]
    filters:
      datazoom_raw.timestamp_date: 30 days
      datazoom_raw.ad_id: "-NULL"
    sorts: [datazoom_raw.Ad_Impressions desc]
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
    limit_displayed_rows: false
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 4
  - title: Ad completion rate
    name: Ad completion rate
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_adbreak_start
    type: looker_line
    fields: [datazoom_raw.Ad_Completion_Rate, datazoom_raw.timestamp_date]
    fill_fields: [datazoom_raw.timestamp_date]
    filters:
      datazoom_raw.event_type: ''
      datazoom_raw.timestamp_date: 30 days
    sorts: [datazoom_raw.timestamp_date desc]
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    series_types: {}
    value_labels: legend
    label_type: labPer
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
    y_axes: []
    listen: {}
    row: 13
    col: 16
    width: 8
    height: 5
  - title: Ad Impresions per hour
    name: Ad Impresions per hour
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_adbreak_start
    type: looker_line
    fields: [datazoom_raw.Ad_Impressions, datazoom_raw.timestamp_hour]
    fill_fields: [datazoom_raw.timestamp_hour]
    filters:
      datazoom_raw.timestamp_date: 168 hours ago for 168 hours
    sorts: [datazoom_raw.timestamp_hour desc]
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
    row: 8
    col: 16
    width: 8
    height: 5
  - name: README
    type: text
    title_text: README
    subtitle_text: Used by ad ops and sales teams
    body_text: |-
      This dashboard displays which ads are being consumed during which content and where. Can be used to determine if ads are successfully viewed or if they are driving users away.

      **Metrics**

      * Ad Tolerance: This is the rate at which users start an ad break and stay until the end. These users are not leaving during the ad break. Some users are more tolerant toward ads, and some content can sustain a higher ad saturation. Use filters to find where that point is.
      * Standard Ad metrics: Impressions, completion, click through and fill rate. Mostly used to measure the success of an ad campaign.


      **Filtering**

      Filter by clicking on a content title, country, Ad ID, or Ad system from the charts.

      Ad tolerance metrics are mostly related to content (filter), where as click and completion metrics are related to the ad itself.
    row: 0
    col: 0
    width: 8
    height: 9
  - title: Ad funnel
    name: Ad funnel
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_adbreak_start
    type: looker_funnel
    fields: [datazoom_raw.event_type, datazoom_raw.Content_Views]
    filters:
      datazoom_raw.event_type: '"Ad_Impression","Ad_Complete","Ad_Click"'
      datazoom_raw.timestamp_date: 7 days
      datazoom_raw.content_group_title: ''
    sorts: [datazoom_raw.Content_Views desc]
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: true
    orientation: automatic
    labelPosition: inline
    percentType: total
    percentPosition: inline
    valuePosition: Hidden
    labelColorEnabled: false
    labelColor: "#FFF"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    series_types: {}
    value_labels: legend
    label_type: labPer
    y_axes: []
    listen: {}
    row: 9
    col: 0
    width: 4
    height: 5
  - title: Ad Clickthrough Rate
    name: Ad Clickthrough Rate
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_adbreak_start
    type: looker_line
    fields: [datazoom_raw.timestamp_date, datazoom_raw.Ad_Clickthrough_Rate]
    fill_fields: [datazoom_raw.timestamp_date]
    filters:
      datazoom_raw.event_type: ''
      datazoom_raw.timestamp_date: 7 days
      datazoom_raw.content_group_title: ''
    sorts: [datazoom_raw.timestamp_date desc]
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    series_types: {}
    value_labels: legend
    label_type: labPer
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
    y_axes: []
    listen: {}
    row: 18
    col: 16
    width: 8
    height: 5
  - title: Fill Rate
    name: Fill Rate
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_adbreak_start
    type: looker_line
    fields: [datazoom_raw.timestamp_date, datazoom_raw.Ad_Fill_Rate,
      datazoom_raw.Ad_Impressions, datazoom_raw.Ad_Requests]
    fill_fields: [datazoom_raw.timestamp_date]
    filters:
      datazoom_raw.timestamp_date: 7 days
      datazoom_raw.content_group_title: ''
    sorts: [datazoom_raw.timestamp_date desc]
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
    hidden_fields: [datazoom_raw.Ad_Impressions, datazoom_raw.Ad_Requests]
    y_axes: []
    listen: {}
    row: 23
    col: 16
    width: 8
    height: 4
  - title: Impressions by Content
    name: Impressions by Content
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_adbreak_start
    type: looker_grid
    fields: [datazoom_raw.Ad_Impressions, datazoom_raw.content_group_title,
      datazoom_raw.Ad_Tollerance]
    filters:
      datazoom_raw.timestamp_date: 7 days
      datazoom_raw.Ad_Tollerance: "<=1,NOT NULL"
      datazoom_raw.Ad_Impressions: ">10"
    sorts: [datazoom_raw.Ad_Impressions desc]
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
    limit_displayed_rows: false
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Content Group Title: datazoom_raw.content_group_title
    row: 0
    col: 8
    width: 8
    height: 9
  filters:
  - name: date
    title: date
    type: date_filter
    default_value: 30 days
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover