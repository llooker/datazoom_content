- dashboard: content_marketing
  title: Content Marketing
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Content Recomendation
    name: Content Recomendation
    model: "@{LOOKER_MODEL_NAME}"
    explore: affinity
    type: looker_scatter
    fields: [affinity.content_a, affinity.avg_user_affinity, affinity.content_b, affinity.joint_user_plays]
    filters:
      affinity.content_b: "-NULL"
      affinity.content_a: La Vida Lena
    sorts: [affinity.avg_user_affinity desc]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    color_application: undefined
    y_axes: [{label: Liklihood to watch, orientation: left, series: [{axisId: affinity.avg_user_affinity,
            id: affinity.avg_user_affinity, name: Affinity Score (by User History)}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: log}]
    size_by_field: affinity.avg_user_affinity
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    series_types: {}
    series_colors:
      affinity.avg_user_affinity: "#72D16D"
    series_labels: {}
    label_color: []
    hidden_fields: [affinity.content_a, affinity.joint_user_plays]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: below
    note_text: Content is most commonly watched before or after the seed content.
      There is a high likelihood that users will watch this content if recommended.
    listen: {}
    row: 0
    col: 15
    width: 9
    height: 8
  - title: Content selector ordered by playcount
    name: Content selector ordered by playcount
    model: "@{LOOKER_MODEL_NAME}"
    explore: affinity
    type: looker_grid
    fields: [affinity.content_a, affinity.content_a_plays]
    filters:
      affinity.content_b: "-NULL"
    sorts: [affinity.content_a_plays desc]
    limit: 500
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application: undefined
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: affinity.avg_user_affinity,
            id: affinity.avg_user_affinity, name: Affinity Score (by User History)}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: log}]
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
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    hidden_fields:
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: expanded
    note_display: above
    note_text: 'Step 1: select your seed content'
    listen: {}
    row: 0
    col: 8
    width: 7
    height: 13
  - title: Hidden Gems
    name: Hidden Gems
    model: "@{LOOKER_MODEL_NAME}"
    explore: affinity
    type: looker_grid
    fields: [affinity.content_a, affinity.content_b, affinity.joint_user_plays, affinity.content_b_plays,
      affinity.avg_user_affinity]
    filters:
      affinity.content_b: "-NULL"
      affinity.content_a: Ang sa Iyo Ay Akin
      affinity.avg_user_affinity: ">10"
    sorts: [playback_scarcity desc]
    limit: 5000
    dynamic_fields: [{table_calculation: playback_scarcity, label: Playback scarcity,
        expression: '1-(${affinity.content_b_plays}/sum(${affinity.content_b_plays}))',
        value_format: !!null '', value_format_name: percent_0, _kind_hint: dimension,
        _type_hint: number}]
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
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application: undefined
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels: {}
    series_column_widths:
      affinity.content_b: 250
    series_cell_visualizations:
      percentage_of_total_plays:
        is_active: true
        value_display: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {steps: 5}},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    y_axes: [{label: Liklihood to watch, orientation: left, series: [{axisId: affinity.avg_user_affinity,
            id: affinity.avg_user_affinity, name: Affinity Score (by User History)}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: log}]
    size_by_field: affinity.avg_user_affinity
    series_types: {}
    series_colors:
      affinity.avg_user_affinity: "#72D16D"
    label_color: []
    hidden_fields: [affinity.content_a, affinity.joint_user_plays, affinity.avg_user_affinity,
      affinity.content_b_plays]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: below
    note_text: This content is not often watched along side the seed content, but
      when it is, it is watched for a long duration. This content is likely not easily
      discovered, users will enjoy it if they start watching.
    listen: {}
    row: 8
    col: 15
    width: 9
    height: 5
  - name: README
    type: text
    title_text: README
    subtitle_text: Used by content curators and internal marketing teams
    body_text: |-
      We can see what content users are inclined to watch by clicking on a "Content A" seed content within the content selector. Press cmd and click to select multiple seed content combination.

      * These content recommendations can be used to increase engagement with existing users.
      * Notifications can be sent out to users that have watched the seed content in the past, but have not watched the recommended content.
      * Recommended content rows can be displayed in the platform, bespoke to the user's viewing history.
      * Related content can be displayed on a content title screen or auto play after a stream has finished.
    row: 0
    col: 0
    width: 8
    height: 7