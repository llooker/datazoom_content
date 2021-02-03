- dashboard: qoe
  title: QoE
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: EBVS
    name: EBVS
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_play_request
    type: looker_line
    fields: [datazoom_raw.timestamp_date, datazoom_raw.EBVS]
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
    listen: {}
    row: 16
    col: 0
    width: 8
    height: 6
  - title: Playback funnel
    name: Playback funnel
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_play_request
    type: looker_funnel
    fields: [datazoom_raw.event_type, datazoom_raw.Content_Views]
    filters:
      datazoom_raw.event_type: '"Play_Request","Playback_Start",Heartbeat'
      datazoom_raw.timestamp_date: 1 days ago for 1 days
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
    row: 12
    col: 4
    width: 4
    height: 4
  - title: TTFF in seconds
    name: TTFF in seconds
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_play_request
    type: looker_map
    fields: [datazoom_raw.geolocation, datazoom_raw.median_TTFF]
    filters:
      datazoom_raw.geolocation_bin_level: '8'
      datazoom_raw.timestamp_date: 30 days
      datazoom_raw.country: ''
      datazoom_raw.os: ''
      datazoom_raw.geolocation: inside box from 66.51326044311188,
        -360 to -66.51326044311186, 450.00000000000006
    sorts: [datazoom_raw.geolocation]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${datazoom_raw.median_TTFF}/1000",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
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
    reverse_map_value_colors: false
    map_latitude: 20.46818922264095
    map_longitude: 32.16796875000001
    map_zoom: 2
    map_marker_radius_fixed: 15
    map_marker_color: [ffffffff]
    map_value_scale_clamp_max: 30
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
      datazoom_raw.median_TTFF]
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
    row: 12
    col: 8
    width: 16
    height: 15
  - title: Buffer recovery rate
    name: Buffer recovery rate
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_play_request
    type: looker_line
    fields: [datazoom_raw.timestamp_date, datazoom_raw.Buffer_End,
      datazoom_raw.Buffer_Recovery_Rate, datazoom_raw.Buffer_Start]
    fill_fields: [datazoom_raw.timestamp_date]
    filters:
      datazoom_raw.timestamp_date: 30 days
      datazoom_raw.player_version: ''
      datazoom_raw.country: ''
      datazoom_raw.os: ''
    sorts: [datazoom_raw.Buffer_End desc]
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
    hidden_fields: [datazoom_raw.Buffer_End, datazoom_raw.Buffer_Start]
    y_axes: []
    listen: {}
    row: 22
    col: 0
    width: 8
    height: 6
  - title: Daily views with video error by message
    name: Daily views with video error by message
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_play_request
    type: looker_line
    fields: [datazoom_raw.event_type, datazoom_raw.timestamp_date,
      datazoom_raw.Content_Views, datazoom_raw.error_msg]
    pivots: [datazoom_raw.error_msg]
    filters:
      datazoom_raw.event_type: Error
      datazoom_raw.player_version: ''
      datazoom_raw.timestamp_date: 30 days ago for 30 days
      datazoom_raw.country: ''
      datazoom_raw.os: ''
      datazoom_raw.error_msg: "-EMPTY"
    sorts: [datazoom_raw.timestamp_date desc, datazoom_raw.error_msg]
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
    show_x_axis_label: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: datazoom_raw.Content_Views,
            id: "#EXT-X-DISCONTINUITY-SEQUENCE is no longer in Media Playlist - datazoom_raw.Content_Views",
            name: "#EXT-X-DISCONTINUITY-SEQUENCE is no longer in Media Playlist"},
          {axisId: datazoom_raw.Content_Views, id: '#EXT-X-KEY: invalid
              KEYFORMAT "com.apple.streamingkeydelivery" - datazoom_raw.Content_Views',
            name: '#EXT-X-KEY: invalid KEYFORMAT "com.apple.streamingkeydelivery"'},
          {axisId: datazoom_raw.Content_Views, id: 0 Length playlist
              returned - datazoom_raw.Content_Views, name: 0 Length
              playlist returned}, {axisId: datazoom_raw.Content_Views,
            id: A conexão à internet parece estar desativada. - datazoom_raw.Content_Views,
            name: A conexão à internet parece estar desativada.}, {axisId: datazoom_raw.Content_Views,
            id: A data connection cannot be established because a call is currently
              active. - datazoom_raw.Content_Views, name: A data connection
              cannot be established because a call is currently active.}, {axisId: datazoom_raw.Content_Views,
            id: A data connection cannot be established since a call is currently
              active. - datazoom_raw.Content_Views, name: A data connection
              cannot be established since a call is currently active.}, {axisId: datazoom_raw.Content_Views,
            id: A data connection is not currently allowed. - datazoom_raw.Content_Views,
            name: A data connection is not currently allowed.}, {axisId: datazoom_raw.Content_Views,
            id: 'A operação não pôde ser concluída. (CoreMediaErrorDomain erro -16849
              - HTTP 503: Service Unavailable) - datazoom_raw.Content_Views',
            name: 'A operação não pôde ser concluída. (CoreMediaErrorDomain erro -16849
              - HTTP 503: Service Unavailable)'}, {axisId: datazoom_raw.Content_Views,
            id: 'A operação não pôde ser concluída. (CoreMediaErrorDomain erro -16850
              - HTTP 504: Gateway Timeout) - datazoom_raw.Content_Views',
            name: 'A operação não pôde ser concluída. (CoreMediaErrorDomain erro -16850
              - HTTP 504: Gateway Timeout)'}, {axisId: datazoom_raw.Content_Views,
            id: A server with the specified hostname could not be found. - datazoom_raw.Content_Views,
            name: A server with the specified hostname could not be found.}, {axisId: datazoom_raw.Content_Views,
            id: Ağ bağlantısı kesildi. - datazoom_raw.Content_Views,
            name: Ağ bağlantısı kesildi.}, {axisId: datazoom_raw.Content_Views,
            id: An SSL error has occurred and a secure connection to the server cannot
              be made. - datazoom_raw.Content_Views, name: An SSL error
              has occurred and a secure connection to the server cannot be made.},
          {axisId: datazoom_raw.Content_Views, id: Aucun serveur ayant
              le nom d’hôte précisé n’a été détecté. - datazoom_raw.Content_Views,
            name: Aucun serveur ayant le nom d’hôte précisé n’a été détecté.}, {axisId: datazoom_raw.Content_Views,
            id: Can not proceed after removing variant - datazoom_raw.Content_Views,
            name: Can not proceed after removing variant}, {axisId: datazoom_raw.Content_Views,
            id: Can not proceed after removing variants - datazoom_raw.Content_Views,
            name: Can not proceed after removing variants}, {axisId: datazoom_raw.Content_Views,
            id: Cannot AirPlay - datazoom_raw.Content_Views, name: Cannot
              AirPlay}, {axisId: datazoom_raw.Content_Views, id: Cannot
              Complete Action - datazoom_raw.Content_Views, name: Cannot
              Complete Action}, {axisId: datazoom_raw.Content_Views,
            id: Cannot Decode - datazoom_raw.Content_Views, name: Cannot
              Decode}, {axisId: datazoom_raw.Content_Views, id: Cannot
              Open - datazoom_raw.Content_Views, name: Cannot Open},
          {axisId: datazoom_raw.Content_Views, id: Connessione dati
              al momento non consentita. - datazoom_raw.Content_Views,
            name: Connessione dati al momento non consentita.}, {axisId: datazoom_raw.Content_Views,
            id: Connexion au serveur impossible. - datazoom_raw.Content_Views,
            name: Connexion au serveur impossible.}, {axisId: datazoom_raw.Content_Views,
            id: Connexion aux données non autorisée actuellement. - datazoom_raw.Content_Views,
            name: Connexion aux données non autorisée actuellement.}, {axisId: datazoom_raw.Content_Views,
            id: Could not connect to the server. - datazoom_raw.Content_Views,
            name: Could not connect to the server.}, {axisId: datazoom_raw.Content_Views,
            id: Dataförbindelse tillåts inte just nu. - datazoom_raw.Content_Views,
            name: Dataförbindelse tillåts inte just nu.}, {axisId: datazoom_raw.Content_Views,
            id: Dataforbindelser er ikke tillatt for øyeblikket. - datazoom_raw.Content_Views,
            name: Dataforbindelser er ikke tillatt for øyeblikket.}, {axisId: datazoom_raw.Content_Views,
            id: 'De bewerking kan niet worden voltooid. (CoreMediaErrorDomain fout
              -12660 - HTTP 403: Forbidden) - datazoom_raw.Content_Views',
            name: 'De bewerking kan niet worden voltooid. (CoreMediaErrorDomain fout
              -12660 - HTTP 403: Forbidden)'}, {axisId: datazoom_raw.Content_Views,
            id: 'De bewerking kan niet worden voltooid. (CoreMediaErrorDomain fout
              -12938 - HTTP 404: File Not Found) - datazoom_raw.Content_Views',
            name: 'De bewerking kan niet worden voltooid. (CoreMediaErrorDomain fout
              -12938 - HTTP 404: File Not Found)'}, {axisId: datazoom_raw.Content_Views,
            id: De bewerking kan niet worden voltooid. (CoreMediaErrorDomain fout
              -16833 - crypt key received slowly) - datazoom_raw.Content_Views,
            name: De bewerking kan niet worden voltooid. (CoreMediaErrorDomain fout
              -16833 - crypt key received slowly)}, {axisId: datazoom_raw.Content_Views,
            id: 'De bewerking kan niet worden voltooid. (CoreMediaErrorDomain fout
              -16849 - HTTP 503: Service Unavailable) - datazoom_raw.Content_Views',
            name: 'De bewerking kan niet worden voltooid. (CoreMediaErrorDomain fout
              -16849 - HTTP 503: Service Unavailable)'}, {axisId: datazoom_raw.Content_Views,
            id: 'De bewerking kan niet worden voltooid. (CoreMediaErrorDomain fout
              -16850 - HTTP 504: Gateway Timeout) - datazoom_raw.Content_Views',
            name: 'De bewerking kan niet worden voltooid. (CoreMediaErrorDomain fout
              -16850 - HTTP 504: Gateway Timeout)'}, {axisId: datazoom_raw.Content_Views,
            id: De bewerking kan niet worden voltooid. (HLSCatalogErrorDomain fout
              -5 - De bewerking kan niet worden voltooid. (HLSCatalogErrorDomain fout
              -5.)) - datazoom_raw.Content_Views, name: De bewerking
              kan niet worden voltooid. (HLSCatalogErrorDomain fout -5 - De bewerking
              kan niet worden voltooid. (HLSCatalogErrorDomain fout -5.))}, {axisId: datazoom_raw.Content_Views,
            id: De bewerking kan niet worden voltooid. (HLSCatalogErrorDomain fout
              -5.) - datazoom_raw.Content_Views, name: De bewerking
              kan niet worden voltooid. (HLSCatalogErrorDomain fout -5.)}, {axisId: datazoom_raw.Content_Views,
            id: De bewerking kan niet worden voltooid. (OSStatus fout -12158 - De
              bewerking kan niet worden voltooid. (OSStatus fout -12158.)) - datazoom_raw.Content_Views,
            name: De bewerking kan niet worden voltooid. (OSStatus fout -12158 - De
              bewerking kan niet worden voltooid. (OSStatus fout -12158.))}, {axisId: datazoom_raw.Content_Views,
            id: De internetverbinding is offline. - datazoom_raw.Content_Views,
            name: De internetverbinding is offline.}, {axisId: datazoom_raw.Content_Views,
            id: De netwerkverbinding is verbroken. - datazoom_raw.Content_Views,
            name: De netwerkverbinding is verbroken.}, {axisId: datazoom_raw.Content_Views,
            id: Der blev ikke fundet en server med det anførte værtsnavn. - datazoom_raw.Content_Views,
            name: Der blev ikke fundet en server med det anførte værtsnavn.}, {axisId: datazoom_raw.Content_Views,
            id: 'Der er opstået en SSL-fejl, og der kan ikke oprettes en sikker forbindelse
              til serveren. - datazoom_raw.Content_Views', name: 'Der
              er opstået en SSL-fejl, og der kan ikke oprettes en sikker forbindelse
              til serveren.'}, {axisId: datazoom_raw.Content_Views,
            id: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -12660 - Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -12660 - HTTP 403: Forbidden)) - datazoom_raw.Content_Views',
            name: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -12660 - Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -12660 - HTTP 403: Forbidden))'}, {axisId: datazoom_raw.Content_Views,
            id: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -12660 - HTTP 403: Forbidden) - datazoom_raw.Content_Views',
            name: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -12660 - HTTP 403: Forbidden)'}, {axisId: datazoom_raw.Content_Views,
            id: Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -12888 - Playlist File unchanged for longer than 1.5 * target duration)
              - datazoom_raw.Content_Views, name: Der Vorgang konnte
              nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler -12888 - Playlist
              File unchanged for longer than 1.5 * target duration)}, {axisId: datazoom_raw.Content_Views,
            id: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -12938 - HTTP 404: File Not Found) - datazoom_raw.Content_Views',
            name: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -12938 - HTTP 404: File Not Found)'}, {axisId: datazoom_raw.Content_Views,
            id: Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -16833 - crypt key received slowly) - datazoom_raw.Content_Views,
            name: Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -16833 - crypt key received slowly)}, {axisId: datazoom_raw.Content_Views,
            id: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -16845 - HTTP 400: (unhandled)) - datazoom_raw.Content_Views',
            name: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -16845 - HTTP 400: (unhandled))'}, {axisId: datazoom_raw.Content_Views,
            id: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -16849 - HTTP 503: Service Unavailable) - datazoom_raw.Content_Views',
            name: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -16849 - HTTP 503: Service Unavailable)'}, {axisId: datazoom_raw.Content_Views,
            id: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -16850 - HTTP 504: Gateway Timeout) - datazoom_raw.Content_Views',
            name: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -16850 - HTTP 504: Gateway Timeout)'}, {axisId: datazoom_raw.Content_Views,
            id: Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -17377 - Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -17377.)) - datazoom_raw.Content_Views, name: Der Vorgang
              konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler -17377
              - Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -17377.))}, {axisId: datazoom_raw.Content_Views, id: Der
              Vorgang konnte nicht abgeschlossen werden. (HLSCatalogErrorDomain-Fehler
              -5 - Der Vorgang konnte nicht abgeschlossen werden. (HLSCatalogErrorDomain-Fehler
              -5.)) - datazoom_raw.Content_Views, name: Der Vorgang
              konnte nicht abgeschlossen werden. (HLSCatalogErrorDomain-Fehler -5
              - Der Vorgang konnte nicht abgeschlossen werden. (HLSCatalogErrorDomain-Fehler
              -5.))}, {axisId: datazoom_raw.Content_Views, id: Der
              Vorgang konnte nicht abgeschlossen werden. (HLSCatalogErrorDomain-Fehler
              -5.) - datazoom_raw.Content_Views, name: Der Vorgang
              konnte nicht abgeschlossen werden. (HLSCatalogErrorDomain-Fehler -5.)},
          {axisId: datazoom_raw.Content_Views, id: Die Netzwerkverbindung
              wurde unterbrochen. - datazoom_raw.Content_Views, name: Die
              Netzwerkverbindung wurde unterbrochen.}, {axisId: datazoom_raw.Content_Views,
            id: EXO2_ERROR_BASE - datazoom_raw.Content_Views, name: EXO2_ERROR_BASE}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: log}]
    size_by_field: datazoom_raw.Content_Views
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hide_legend: false
    series_types:
      " - datazoom_raw.Content_Views": scatter
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [datazoom_raw.event_type]
    value_labels: legend
    label_type: labPer
    listen: {}
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Daily error rate
    name: Daily error rate
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_play_request
    type: looker_line
    fields: [datazoom_raw.Ad_Error_Rate, datazoom_raw.Video_Error_Rate,
      datazoom_raw.timestamp_date]
    fill_fields: [datazoom_raw.timestamp_date]
    filters:
      datazoom_raw.player_version: ''
      datazoom_raw.timestamp_date: 30 days ago for 30 days
      datazoom_raw.country: ''
      datazoom_raw.os: ''
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
    listen: {}
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
      datazoom_raw.Buffer_End, datazoom_raw.Buffer_Start]
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
    note_state: collapsed
    note_display: hover
    note_text: These events must be turned on in the Datazoom console for the dashboard
      to work.
    listen: {}
    row: 12
    col: 0
    width: 4
    height: 4
  - name: README
    type: text
    title_text: README
    subtitle_text: Used by Video Engineering and Incident Management
    body_text: |
      This dashboard displays various playback quality indicators. It is used to help the engineering teams identify and debug video issues.

      Click on the bell icon on any of the time series charts to get alerts sent to slack or email should incident indicators pass a certain threshold.

      **Suggested Monitoring**

      * Realtime Error Rate. Video error rate should not surpass 20% and ad error rate should not surpass 30%.
      * EBVS should stay below 10%
      * Buffer Recovery rate should be above 90%


      **Issue Investigation**

      1. Are there any abnormalities in the time series charts? Look for spikes and flat lines.
      2. Is there a correlation between spikes in the real time charts? Increase in error rate can be attributed to a specific error message.
      3. Click on the error message charts to see what content titles contributed to that error. Perhaps there is a certain title that needs attention.
      4. Use the country and OS filters to see if there is a disproportionate number of errors, and prioritise fixing these platforms accordingly.

      **Definitions**

      EBVS - Exit before video start. Users may not be able to playback video and also don't generate an error. EBVS will increase in under these circumstances. <br>
      Buffer Recovery Rate - The percentage of buffer starts that have a resulting buffer end. Those buffers that do not have an end, either got stuck or the user did not tolerate the buffer duration.<br>
      TTFF - Time to first frame. How long it takes to start video playback. Ideally the video should be quick to start, but the delay in starting can be tolerated more depending on the user's circumstances.
    row: 0
    col: 0
    width: 8
    height: 12
  - title: Realtime error rate
    name: Realtime error rate
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_play_request
    type: looker_line
    fields: [datazoom_raw.Ad_Error_Rate, datazoom_raw.Video_Error_Rate,
      datazoom_raw.timestamp_minute]
    fill_fields: [datazoom_raw.timestamp_minute]
    filters:
      datazoom_raw.player_version: ''
      datazoom_raw.timestamp_date: 1440 minutes ago for 1440 minutes
      datazoom_raw.country: ''
      datazoom_raw.os: ''
    sorts: [datazoom_raw.timestamp_minute desc]
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
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Realtime total error messages
    name: Realtime total error messages
    model: "@{LOOKER_MODEL_NAME}"
    explore: views_with_play_request
    type: looker_line
    fields: [datazoom_raw.event_type, datazoom_raw.Content_Views,
      datazoom_raw.error_msg, datazoom_raw.timestamp_minute]
    pivots: [datazoom_raw.error_msg]
    filters:
      datazoom_raw.event_type: Error
      datazoom_raw.player_version: ''
      datazoom_raw.country: ''
      datazoom_raw.os: ''
      datazoom_raw.error_msg: "-EMPTY"
      datazoom_raw.timestamp_minute: 1440 minutes ago for 1440 minutes
    sorts: [datazoom_raw.error_msg, datazoom_raw.timestamp_minute
        desc]
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
    show_x_axis_label: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: datazoom_raw.Content_Views,
            id: "#EXT-X-DISCONTINUITY-SEQUENCE is no longer in Media Playlist - datazoom_raw.Content_Views",
            name: "#EXT-X-DISCONTINUITY-SEQUENCE is no longer in Media Playlist"},
          {axisId: datazoom_raw.Content_Views, id: '#EXT-X-KEY: invalid
              KEYFORMAT "com.apple.streamingkeydelivery" - datazoom_raw.Content_Views',
            name: '#EXT-X-KEY: invalid KEYFORMAT "com.apple.streamingkeydelivery"'},
          {axisId: datazoom_raw.Content_Views, id: 0 Length playlist
              returned - datazoom_raw.Content_Views, name: 0 Length
              playlist returned}, {axisId: datazoom_raw.Content_Views,
            id: A conexão à internet parece estar desativada. - datazoom_raw.Content_Views,
            name: A conexão à internet parece estar desativada.}, {axisId: datazoom_raw.Content_Views,
            id: A data connection cannot be established because a call is currently
              active. - datazoom_raw.Content_Views, name: A data connection
              cannot be established because a call is currently active.}, {axisId: datazoom_raw.Content_Views,
            id: A data connection cannot be established since a call is currently
              active. - datazoom_raw.Content_Views, name: A data connection
              cannot be established since a call is currently active.}, {axisId: datazoom_raw.Content_Views,
            id: A data connection is not currently allowed. - datazoom_raw.Content_Views,
            name: A data connection is not currently allowed.}, {axisId: datazoom_raw.Content_Views,
            id: 'A operação não pôde ser concluída. (CoreMediaErrorDomain erro -16849
              - HTTP 503: Service Unavailable) - datazoom_raw.Content_Views',
            name: 'A operação não pôde ser concluída. (CoreMediaErrorDomain erro -16849
              - HTTP 503: Service Unavailable)'}, {axisId: datazoom_raw.Content_Views,
            id: 'A operação não pôde ser concluída. (CoreMediaErrorDomain erro -16850
              - HTTP 504: Gateway Timeout) - datazoom_raw.Content_Views',
            name: 'A operação não pôde ser concluída. (CoreMediaErrorDomain erro -16850
              - HTTP 504: Gateway Timeout)'}, {axisId: datazoom_raw.Content_Views,
            id: A server with the specified hostname could not be found. - datazoom_raw.Content_Views,
            name: A server with the specified hostname could not be found.}, {axisId: datazoom_raw.Content_Views,
            id: Ağ bağlantısı kesildi. - datazoom_raw.Content_Views,
            name: Ağ bağlantısı kesildi.}, {axisId: datazoom_raw.Content_Views,
            id: An SSL error has occurred and a secure connection to the server cannot
              be made. - datazoom_raw.Content_Views, name: An SSL error
              has occurred and a secure connection to the server cannot be made.},
          {axisId: datazoom_raw.Content_Views, id: Aucun serveur ayant
              le nom d’hôte précisé n’a été détecté. - datazoom_raw.Content_Views,
            name: Aucun serveur ayant le nom d’hôte précisé n’a été détecté.}, {axisId: datazoom_raw.Content_Views,
            id: Can not proceed after removing variant - datazoom_raw.Content_Views,
            name: Can not proceed after removing variant}, {axisId: datazoom_raw.Content_Views,
            id: Can not proceed after removing variants - datazoom_raw.Content_Views,
            name: Can not proceed after removing variants}, {axisId: datazoom_raw.Content_Views,
            id: Cannot AirPlay - datazoom_raw.Content_Views, name: Cannot
              AirPlay}, {axisId: datazoom_raw.Content_Views, id: Cannot
              Complete Action - datazoom_raw.Content_Views, name: Cannot
              Complete Action}, {axisId: datazoom_raw.Content_Views,
            id: Cannot Decode - datazoom_raw.Content_Views, name: Cannot
              Decode}, {axisId: datazoom_raw.Content_Views, id: Cannot
              Open - datazoom_raw.Content_Views, name: Cannot Open},
          {axisId: datazoom_raw.Content_Views, id: Connessione dati
              al momento non consentita. - datazoom_raw.Content_Views,
            name: Connessione dati al momento non consentita.}, {axisId: datazoom_raw.Content_Views,
            id: Connexion au serveur impossible. - datazoom_raw.Content_Views,
            name: Connexion au serveur impossible.}, {axisId: datazoom_raw.Content_Views,
            id: Connexion aux données non autorisée actuellement. - datazoom_raw.Content_Views,
            name: Connexion aux données non autorisée actuellement.}, {axisId: datazoom_raw.Content_Views,
            id: Could not connect to the server. - datazoom_raw.Content_Views,
            name: Could not connect to the server.}, {axisId: datazoom_raw.Content_Views,
            id: Dataförbindelse tillåts inte just nu. - datazoom_raw.Content_Views,
            name: Dataförbindelse tillåts inte just nu.}, {axisId: datazoom_raw.Content_Views,
            id: Dataforbindelser er ikke tillatt for øyeblikket. - datazoom_raw.Content_Views,
            name: Dataforbindelser er ikke tillatt for øyeblikket.}, {axisId: datazoom_raw.Content_Views,
            id: 'De bewerking kan niet worden voltooid. (CoreMediaErrorDomain fout
              -12660 - HTTP 403: Forbidden) - datazoom_raw.Content_Views',
            name: 'De bewerking kan niet worden voltooid. (CoreMediaErrorDomain fout
              -12660 - HTTP 403: Forbidden)'}, {axisId: datazoom_raw.Content_Views,
            id: 'De bewerking kan niet worden voltooid. (CoreMediaErrorDomain fout
              -12938 - HTTP 404: File Not Found) - datazoom_raw.Content_Views',
            name: 'De bewerking kan niet worden voltooid. (CoreMediaErrorDomain fout
              -12938 - HTTP 404: File Not Found)'}, {axisId: datazoom_raw.Content_Views,
            id: De bewerking kan niet worden voltooid. (CoreMediaErrorDomain fout
              -16833 - crypt key received slowly) - datazoom_raw.Content_Views,
            name: De bewerking kan niet worden voltooid. (CoreMediaErrorDomain fout
              -16833 - crypt key received slowly)}, {axisId: datazoom_raw.Content_Views,
            id: 'De bewerking kan niet worden voltooid. (CoreMediaErrorDomain fout
              -16849 - HTTP 503: Service Unavailable) - datazoom_raw.Content_Views',
            name: 'De bewerking kan niet worden voltooid. (CoreMediaErrorDomain fout
              -16849 - HTTP 503: Service Unavailable)'}, {axisId: datazoom_raw.Content_Views,
            id: 'De bewerking kan niet worden voltooid. (CoreMediaErrorDomain fout
              -16850 - HTTP 504: Gateway Timeout) - datazoom_raw.Content_Views',
            name: 'De bewerking kan niet worden voltooid. (CoreMediaErrorDomain fout
              -16850 - HTTP 504: Gateway Timeout)'}, {axisId: datazoom_raw.Content_Views,
            id: De bewerking kan niet worden voltooid. (HLSCatalogErrorDomain fout
              -5 - De bewerking kan niet worden voltooid. (HLSCatalogErrorDomain fout
              -5.)) - datazoom_raw.Content_Views, name: De bewerking
              kan niet worden voltooid. (HLSCatalogErrorDomain fout -5 - De bewerking
              kan niet worden voltooid. (HLSCatalogErrorDomain fout -5.))}, {axisId: datazoom_raw.Content_Views,
            id: De bewerking kan niet worden voltooid. (HLSCatalogErrorDomain fout
              -5.) - datazoom_raw.Content_Views, name: De bewerking
              kan niet worden voltooid. (HLSCatalogErrorDomain fout -5.)}, {axisId: datazoom_raw.Content_Views,
            id: De bewerking kan niet worden voltooid. (OSStatus fout -12158 - De
              bewerking kan niet worden voltooid. (OSStatus fout -12158.)) - datazoom_raw.Content_Views,
            name: De bewerking kan niet worden voltooid. (OSStatus fout -12158 - De
              bewerking kan niet worden voltooid. (OSStatus fout -12158.))}, {axisId: datazoom_raw.Content_Views,
            id: De internetverbinding is offline. - datazoom_raw.Content_Views,
            name: De internetverbinding is offline.}, {axisId: datazoom_raw.Content_Views,
            id: De netwerkverbinding is verbroken. - datazoom_raw.Content_Views,
            name: De netwerkverbinding is verbroken.}, {axisId: datazoom_raw.Content_Views,
            id: Der blev ikke fundet en server med det anførte værtsnavn. - datazoom_raw.Content_Views,
            name: Der blev ikke fundet en server med det anførte værtsnavn.}, {axisId: datazoom_raw.Content_Views,
            id: 'Der er opstået en SSL-fejl, og der kan ikke oprettes en sikker forbindelse
              til serveren. - datazoom_raw.Content_Views', name: 'Der
              er opstået en SSL-fejl, og der kan ikke oprettes en sikker forbindelse
              til serveren.'}, {axisId: datazoom_raw.Content_Views,
            id: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -12660 - Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -12660 - HTTP 403: Forbidden)) - datazoom_raw.Content_Views',
            name: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -12660 - Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -12660 - HTTP 403: Forbidden))'}, {axisId: datazoom_raw.Content_Views,
            id: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -12660 - HTTP 403: Forbidden) - datazoom_raw.Content_Views',
            name: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -12660 - HTTP 403: Forbidden)'}, {axisId: datazoom_raw.Content_Views,
            id: Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -12888 - Playlist File unchanged for longer than 1.5 * target duration)
              - datazoom_raw.Content_Views, name: Der Vorgang konnte
              nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler -12888 - Playlist
              File unchanged for longer than 1.5 * target duration)}, {axisId: datazoom_raw.Content_Views,
            id: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -12938 - HTTP 404: File Not Found) - datazoom_raw.Content_Views',
            name: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -12938 - HTTP 404: File Not Found)'}, {axisId: datazoom_raw.Content_Views,
            id: Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -16833 - crypt key received slowly) - datazoom_raw.Content_Views,
            name: Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -16833 - crypt key received slowly)}, {axisId: datazoom_raw.Content_Views,
            id: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -16845 - HTTP 400: (unhandled)) - datazoom_raw.Content_Views',
            name: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -16845 - HTTP 400: (unhandled))'}, {axisId: datazoom_raw.Content_Views,
            id: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -16849 - HTTP 503: Service Unavailable) - datazoom_raw.Content_Views',
            name: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -16849 - HTTP 503: Service Unavailable)'}, {axisId: datazoom_raw.Content_Views,
            id: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -16850 - HTTP 504: Gateway Timeout) - datazoom_raw.Content_Views',
            name: 'Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -16850 - HTTP 504: Gateway Timeout)'}, {axisId: datazoom_raw.Content_Views,
            id: Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -17377 - Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -17377.)) - datazoom_raw.Content_Views, name: Der Vorgang
              konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler -17377
              - Der Vorgang konnte nicht abgeschlossen werden. (CoreMediaErrorDomain-Fehler
              -17377.))}, {axisId: datazoom_raw.Content_Views, id: Der
              Vorgang konnte nicht abgeschlossen werden. (HLSCatalogErrorDomain-Fehler
              -5 - Der Vorgang konnte nicht abgeschlossen werden. (HLSCatalogErrorDomain-Fehler
              -5.)) - datazoom_raw.Content_Views, name: Der Vorgang
              konnte nicht abgeschlossen werden. (HLSCatalogErrorDomain-Fehler -5
              - Der Vorgang konnte nicht abgeschlossen werden. (HLSCatalogErrorDomain-Fehler
              -5.))}, {axisId: datazoom_raw.Content_Views, id: Der
              Vorgang konnte nicht abgeschlossen werden. (HLSCatalogErrorDomain-Fehler
              -5.) - datazoom_raw.Content_Views, name: Der Vorgang
              konnte nicht abgeschlossen werden. (HLSCatalogErrorDomain-Fehler -5.)},
          {axisId: datazoom_raw.Content_Views, id: Die Netzwerkverbindung
              wurde unterbrochen. - datazoom_raw.Content_Views, name: Die
              Netzwerkverbindung wurde unterbrochen.}, {axisId: datazoom_raw.Content_Views,
            id: EXO2_ERROR_BASE - datazoom_raw.Content_Views, name: EXO2_ERROR_BASE}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: log}]
    size_by_field: datazoom_raw.Content_Views
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hide_legend: false
    series_types:
      " - datazoom_raw.Content_Views": scatter
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [datazoom_raw.event_type]
    value_labels: legend
    label_type: labPer
    listen: {}
    row: 6
    col: 8
    width: 8
    height: 6
  filters:
  - name: country
    title: country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: datazoom_content
    explore: datazoom_raw
    listens_to_filters: []
    field: datazoom_raw.country
  - name: OS
    title: OS
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: datazoom_content
    explore: datazoom_raw
    listens_to_filters: []
    field: datazoom_raw.os
