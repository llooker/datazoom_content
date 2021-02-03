view: datazoom_raw {
  sql_table_name: `@{BIGQUERY_PROJECT_NAME}.@{BIGQUERY_DATASET_NAME}.@{DATAZOOM_RAW_TABLE_NAME}`
    ;;
  dimension: content_group_title {
    description: "Series level content title. Can be the series or movie title"
    type: string
    sql: ${TABLE}.contentGroupTitle ;;
    drill_fields: [content_title]
  }
  dimension: content_id {
    description: "Unique identifier for the video asset"
    type: string
    sql: ${TABLE}.contentId ;;
  }
  dimension: content_title {
    type: string
    sql: ${TABLE}.contentTitle ;;
  }
  dimension: content_type {
    description: "Episode level content title. Can be the episode or movie title"
    type: string
    sql: ${TABLE}.contentType ;;
  }

  dimension: abs_shift {
    description: "Describes the direction of the rendition change that occurred during Adaptive Bitrate Streaming. Values ‘up’ or ‘down’ depends on the value of the previous rendition. 'absShift' is an attribute of the Rendition Change event."
    type: string
    sql: ${TABLE}.absShift ;;
  }

  dimension: ad_blocker {
    description: "true or false if the user has an adblocker detected"
    type: yesno
    sql: ${TABLE}.adBlocker ;;
  }

  dimension: ad_click_url {
    description: "URL opened when the user interacts with an ad during playback."
    type: string
    sql: ${TABLE}.adClickUrl ;;
  }

  dimension: ad_id {
    type: string
    sql: ${TABLE}.adId ;;
  }

  dimension: ad_partner {
    type: string
    sql: ${TABLE}.adPartner ;;
  }

  dimension: ad_position {
    type: string
    sql: ${TABLE}.adPosition ;;
  }

  dimension: ad_skipped {
    type: yesno
    sql: ${TABLE}.adSkipped ;;
  }

  dimension: ad_system {
    type: string
    sql: ${TABLE}.adSystem ;;
  }

  dimension: ad_time_offset {
    type: number
    sql: ${TABLE}.adTimeOffset ;;
  }

  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.advertiserName ;;
  }

  dimension: asn {
    type: string
    sql: ${TABLE}.asn ;;
  }

  dimension: asn_organization {
    type: string
    sql: ${TABLE}.asnOrganization ;;
  }

  dimension: auto_start {
    type: yesno
    sql: ${TABLE}.autoStart ;;
  }

  dimension: bandwidth {
    type: number
    sql: ${TABLE}.bandwidth ;;
  }

  dimension: bitrate {
    type: number
    sql: ${TABLE}.bitrate ;;
  }

  dimension: browser {
    type: string
    sql: ${TABLE}.browser ;;
  }

  dimension: browser_height {
    type: number
    sql: ${TABLE}.browserHeight ;;
  }

  dimension: browser_version {
    type: string
    sql: ${TABLE}.browserVersion ;;
  }

  dimension: browser_width {
    type: number
    sql: ${TABLE}.browserWidth ;;
  }

  dimension: buffer_fill {
    type: number
    sql: ${TABLE}.bufferFill ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: client_ip {
    type: string
    sql: ${TABLE}.client_ip ;;
  }

  dimension: configuration_id {
    type: string
    sql: ${TABLE}.configuration_id ;;
  }

  dimension: connector_list {
    type: string
    sql: ${TABLE}.connector_list ;;
  }

  dimension: cookies_enabled {
    type: yesno
    sql: ${TABLE}.cookiesEnabled ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.countryCode ;;
  }

  dimension: creative_id {
    type: string
    sql: ${TABLE}.creativeId ;;
  }

  dimension: customer_code {
    type: string
    sql: ${TABLE}.customer_code ;;
  }

  dimension: deal_id {
    type: string
    sql: ${TABLE}.dealId ;;
  }

  dimension: default_muted {
    type: yesno
    sql: ${TABLE}.defaultMuted ;;
  }

  dimension: default_playback_rate {
    type: number
    sql: ${TABLE}.defaultPlaybackRate ;;
  }

  dimension: device_id {
    type: string
    sql: ${TABLE}.device_id ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.deviceType ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.duration ;;
  }

  dimension: dz_sdk_version {
    type: string
    sql: ${TABLE}.dzSdkVersion ;;
  }

  dimension: engagement_duration {
    type: number
    sql: ${TABLE}.engagementDuration ;;
  }

  dimension: engagement_duration_ads {
    type: number
    sql: ${TABLE}.engagementDurationAds ;;
  }

  dimension: engagement_duration_content {
    type: number
    sql: ${TABLE}.engagementDurationContent ;;
  }

  dimension: error_code {
    type: string
    sql: ${TABLE}.errorCode ;;
  }

  dimension: error_msg {
    type: string
    sql: ${TABLE}.errorMsg ;;
    drill_fields: [content_title]
  }

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: fullscreen {
    type: yesno
    sql: ${TABLE}.fullscreen ;;
  }

  dimension: is_muted {
    type: yesno
    sql: ${TABLE}.isMuted ;;
  }

  dimension: isp {
    type: string
    sql: ${TABLE}.isp ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: latitude_rounded {
    type: number
    sql: ROUND(${latitude},2) ;;
  }

  dimension: longitude_rounded {
    type: number
    sql: ROUND(${longitude},2) ;;
  }

  dimension: loop {
    type: yesno
    sql: ${TABLE}.loop ;;
  }

  dimension: milestone_percent {
    type: number
    sql: ${TABLE}.milestonePercent ;;
  }

  dimension: number_of_ads {
    type: number
    sql: ${TABLE}.numberOfAds ;;
  }

  dimension: number_of_errors {
    type: number
    sql: ${TABLE}.numberOfErrors ;;
  }

  dimension: number_of_videos {
    type: number
    sql: ${TABLE}.numberOfVideos ;;
  }

  dimension: os {
    type: string
    sql: ${TABLE}.os ;;
    drill_fields: [os_version]
  }

  dimension: os_version {
    type: string
    sql: ${TABLE}.osVersion ;;
  }

  dimension: page_title {
    type: string
    sql: ${TABLE}.pageTitle ;;
  }

  dimension: page_url {
    type: string
    sql: ${TABLE}.pageUrl ;;
  }

  dimension: playback_duration {
    type: number
    sql: ${TABLE}.playbackDuration ;;
  }

  dimension: playback_duration_ads {
    type: number
    sql: ${TABLE}.playbackDurationAds ;;
  }

  dimension: playback_duration_content {
    type: number
    sql: ${TABLE}.playbackDurationContent ;;
  }

  dimension: playback_rate {
    type: number
    sql: ${TABLE}.playbackRate ;;
  }

  dimension: player_height {
    type: number
    sql: ${TABLE}.playerHeight ;;
  }

  dimension: player_name {
    type: string
    sql: ${TABLE}.playerName ;;
  }

  dimension: player_state {
    type: string
    sql: ${TABLE}.playerState ;;
  }

  dimension: player_version {
    type: string
    sql: ${TABLE}.playerVersion ;;
  }

  dimension: player_viewable {
    type: yesno
    sql: ${TABLE}.playerViewable ;;
  }

  dimension: player_viewable_percent {
    type: number
    sql: ${TABLE}.playerViewablePercent ;;
  }

  dimension: player_width {
    type: number
    sql: ${TABLE}.playerWidth ;;
  }

  dimension: playhead_position {
    type: number
    sql: ${TABLE}.playheadPosition ;;
  }

  dimension: ready_state {
    type: string
    sql: ${TABLE}.readyState ;;
  }

  dimension: referrer_url {
    type: string
    sql: ${TABLE}.referrerUrl ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: region_code {
    type: string
    sql: ${TABLE}.regionCode ;;
  }

  dimension: rendition_height {
    type: number
    sql: ${TABLE}.renditionHeight ;;
  }

  dimension: rendition_name {
    type: string
    sql: ${TABLE}.renditionName ;;
  }

  dimension: rendition_video_bitrate {
    type: number
    sql: ${TABLE}.renditionVideoBitrate ;;
  }

  dimension: rendition_width {
    type: number
    sql: ${TABLE}.renditionWidth ;;
  }

  dimension: seek_end_point {
    type: number
    sql: ${TABLE}.seekEndPoint ;;
  }

  dimension: seek_start_point {
    type: number
    sql: ${TABLE}.seekStartPoint ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension_group: session_start_timestamp {
    type: time
    datatype: epoch
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: TIMESTAMP_MILLIS(CAST(${TABLE}.sessionStartTimestamp AS INT64)) ;;
  }

  dimension: site_domain {
    type: string
    sql: ${TABLE}.siteDomain ;;
  }

  dimension: skip_time_offset {
    type: number
    sql: ${TABLE}.skipTimeOffset ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: streaming_protocol {
    type: string
    sql: ${TABLE}.streamingProtocol ;;
  }

  dimension: streaming_type {
    type: string
    sql: ${TABLE}.streamingType ;;
  }

  dimension: time_since_ad_break_start {
    type: number
    sql: ${TABLE}.timeSinceAdBreakStart ;;
  }

  dimension: time_since_ad_paused {
    type: number
    sql: ${TABLE}.timeSinceAdPaused ;;
  }

  dimension: time_since_ad_requested {
    type: number
    sql: ${TABLE}.timeSinceAdRequested ;;
  }

  dimension: time_since_ad_started {
    type: number
    sql: ${TABLE}.timeSinceAdStarted ;;
  }

  dimension: time_since_buffer_start {
    type: number
    sql: ${TABLE}.timeSinceBufferStart ;;
  }

  dimension: time_since_last_ad {
    type: number
    sql: ${TABLE}.timeSinceLastAd ;;
  }

  dimension: time_since_last_ad_heartbeat {
    type: number
    sql: ${TABLE}.timeSinceLastAdHeartbeat ;;
  }

  dimension: time_since_last_ad_milestone {
    type: number
    sql: ${TABLE}.timeSinceLastAdMilestone ;;
  }

  dimension: time_since_last_heartbeat {
    type: number
    sql: ${TABLE}.timeSinceLastHeartbeat ;;
  }

  dimension: time_since_last_milestone {
    type: number
    sql: ${TABLE}.timeSinceLastMilestone ;;
  }

  dimension: time_since_last_rendition_change {
    type: number
    sql: ${TABLE}.timeSinceLastRenditionChange ;;
  }

  dimension: time_since_paused {
    type: number
    sql: ${TABLE}.timeSincePaused ;;
  }

  dimension: time_since_requested {
    type: number
    sql: ${TABLE}.timeSinceRequested ;;
  }

  dimension: time_since_seek_start {
    type: number
    sql: ${TABLE}.timeSinceSeekStart ;;
  }

  dimension: time_since_started {
    type: number
    sql: ${TABLE}.timeSinceStarted ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      minute,
      hour,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: total_buffer_time {
    type: number
    sql: ${TABLE}.totalBufferTime ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
  }

  dimension: video_type {
    type: string
    sql: ${TABLE}.videoType ;;
  }

  dimension: view_id {
    type: string
    sql: ${TABLE}.viewId ;;
  }

  dimension_group: view_start_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.viewStartTimestamp ;;
  }

  dimension: volume_level {
    type: number
    sql: ${TABLE}.volumeLevel ;;
  }

  dimension: wrapper_creative_ids {
    type: string
    sql: ${TABLE}.wrapperCreativeIds ;;
  }

  dimension: wrapper_id {
    type: string
    sql: ${TABLE}.wrapperId ;;
  }

  dimension: wrapper_systems {
    type: string
    sql: ${TABLE}.wrapperSystems ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zipCode ;;
  }

  dimension: event_count {
    label: "Event index for the session"
    description: "Describes the order that the events were fired in"
    type: string
    sql: ${TABLE}.eventCount  ;;
  }

  measure: count {
    type: count
    drill_fields: [rendition_name, player_name, event_type]
  }

  measure: average_bitrate {
    sql: ${bitrate} ;;
    type: average
  }
  measure: average_bandwidth {
    sql: ${bandwidth} ;;
    type: average
  }
  measure: Conurrent_Users{
    sql: ${session_id} ;;
    type: count_distinct
  }
  measure: Content_Views{
    sql: ${view_id} ;;
    type: count_distinct
    drill_fields: [view_id, content_title]
  }

  measure: Milliseconds_Watched_Content{
    sql: ${playback_duration_content} ;;
    type: max
  }
  measure: Milliseconds_Watched_Ads{
    sql: ${playback_duration_ads} ;;
    type: max
  }
  measure: Milliseconds_Watched_Ads_and_Content{
    sql: ${playback_duration} ;;
    type: max
  }

  measure: Unique_Devices{
    sql: ${device_id} ;;
    type: count_distinct
    link: {
      label: "Audience Dashboard"
      url: "https://datazoom.looker.com/dashboards-next/11"
    }
  }

  measure: Content_Titles{
    sql: ${content_group_title} ;;
    type: count_distinct
  }

  measure: Heartbeats {
    type: count
    filters: {
      field: event_type
      value: "Heartbeat"
    }
  }
  measure: Mins_From_heartbeat {
    description: "Mintures viewed calculated from the number of heartbeats"
    type: number
    sql: (${Heartbeats}) ;;
    link: {
      label: "Content Dashboard"
      url: "https://datazoom.looker.com/dashboards-next/12"
    }
  }

  measure: Ad_Impressions {
    description: "The number of ad impressions served to users"
    type: count
    filters: {
      field: event_type
      value: "Ad_Impression"
    }
    link: {
      label: "Ads Dashboard"
      url: "https://datazoom.looker.com/dashboards-next/10"
    }
  }

  measure: Ad_Requests {
    type: count
    filters: {
      field: event_type
      value: "Ad_Request"
    }
  }

  measure: Ad_Loadeds {
    type: count
    filters: {
      field: event_type
      value: "Ad_Loaded"
    }
  }

  measure: Ad_Fill_Rate {
    type: number
    value_format_name: percent_2
    sql: (${Ad_Loadeds}/NULLIF(${Ad_Requests}, 0)) ;;
  }


  measure: Ad_Break_Starts {
    type: count
    filters: {
      field: event_type
      value: "Ad_Break_Start"
    }
  }

  measure: Ad_Break_Ends {
    type: count
    filters: {
      field: event_type
      value: "Ad_Break_End"
    }
  }


  # measure: Distinct_Smoothed_Ad_Break_Ends {
  #   type: count_distinct
  #   filters: {
  #     field: event_type
  #     value: "Ad_Break_End"
  #   }
  # sql: (${view_id} in ${views_with_adbreakstart.view_id});;
  # }

  measure: Distinct_Ad_Break_Starts {
    description: "The number of views that have an ad break start"
    type: count_distinct
    sql: ${view_id} ;;
    filters: {
      field: event_type
      value: "Ad_Break_Start"
    }
  }

  measure: Distinct_Ad_Break_Ends {
    description: "The number of views that have an ad break end"
    type: count_distinct
    sql: ${view_id} ;;
    filters: {
      field: event_type
      value: "Ad_Break_End"
    }
  }



  measure: Ad_Break_Dropoff {
    description: "The rate at which users do not complete the adbreak."
    type: number
    value_format_name: percent_2
    sql: (1-(${Distinct_Ad_Break_Ends}/NULLIF(${Distinct_Ad_Break_Starts}, 0))) ;;
  }

  measure: Ad_Tollerance {
    description: "The percentage of adbreaks that end"
    type: number
    value_format_name: percent_2
    sql: (${Distinct_Ad_Break_Ends}/NULLIF(${Distinct_Ad_Break_Starts}, 0)) ;;
  }


  measure: Ad_Clicks {
    type: count
    filters: {
      field: event_type
      value: "Ad_Click"
    }
  }

  measure: Ad_Clickthrough_Rate {
    description: "The percentage of ads that are clicked."
    type: number
    value_format_name: percent_2
    sql: ((${Ad_Clicks}/NULLIF(${Ad_Impressions}, 0))) ;;
  }

  measure: Ad_Completes {
    type: count
    filters: {
      field: event_type
      value: "Ad_Complete"
    }
  }

  measure: Ad_Completion_Rate {
    description: "The percentage of ads that are watched in their entirity."
    type: number
    value_format_name: percent_2
    sql: ((${Ad_Completes}/NULLIF(${Ad_Impressions}, 0))) ;;
  }

  # measure: Stalls_Starts {
  #   type: count
  #   filters: {
  #     field: event_type
  #     value: "Stall_Start"
  #   }
  # }

  # measure: Stall_Ends {
  #   type: count
  #   filters: {
  #     field: event_type
  #     value: "Ad_Request"
  #   }
  # }

  # measure: Stall_Recovery_Rate {
  #   type: number
  #   value_format_name: percent_2
  #   sql: (${Stall_Ends}/NULLIF(${Stalls_Starts}, 0)) ;;
  # }

  measure: average_TTFF {
    description: "The average time it takes to start playback from the play request"
    sql: ${time_since_requested} ;;
    type: average
    filters: {
      field: event_type
      value: "Playback_Start"
    }
  }

  measure: median_TTFF {
    description: "The median time it takes to start playback from the play request"
    sql: ${time_since_requested} ;;
    type: percentile
    percentile: 50
    filters: {
      field: event_type
      value: "Playback_Start"
    }
  }

  dimension: playhead_position_bucket {
    description: "Position of the playhead bucketed into 5 minute intervals"
    type: tier
    tiers: [
      0,
      300,
      600,
      900,
      1200,
      1500,
      1800,
      2100
    ]
    sql: ${playhead_position} ;;
  }

  measure: TTFF_95th_percentile {
    description: "The slowest 5% time it takes to start playback from the play request"
    type: percentile
    percentile: 95
    sql: ${time_since_started} ;;
  }


  measure: Buffer_Start {
    type: count
    filters: {
      field: event_type
      value: "Buffer_Start"
    }
  }

  measure: Buffer_End {
    type: count
    filters: {
      field: event_type
      value: "Buffer_End"
    }
  }

  measure: Buffer_Recovery_Rate {
    type: number
    value_format_name: percent_2
    sql: (${Buffer_End}/NULLIF(${Buffer_Start}, 0)) ;;
  }

  measure: Views_with_error{
    type: count_distinct
    sql: ${view_id} ;;
    filters: {
      field: event_type
      value: "Error"
    }
  }

  measure: Video_Error_Rate{
    type: number
    value_format_name: percent_2
    sql: (${Views_with_error}/NULLIF(${Content_Views}, 0)) ;;
  }

  measure: Views_with_ad_request{
    type: count_distinct
    sql: ${view_id} ;;
    filters: {
      field: event_type
      value: "Ad_Request"
    }
  }

  measure: Views_with_ad_error{
    type: count_distinct
    sql: ${view_id} ;;
    filters: {
      field: event_type
      value: "Ad_Error"
    }
  }

  measure: Ad_Error_Rate{
    type: number
    value_format_name: percent_2
    sql: (${Views_with_ad_error}/NULLIF(${Content_Views}, 0)) ;;
  }

  measure: Play_Request {
    type: count
    filters: {
      field: event_type
      value: "Play_Request"
    }
  }

  measure: Playback_Start {
    type: count
    filters: {
      field: event_type
      value: "Playback_Start"
    }
  }

  measure: Distinct_Play_Request {
    type: count_distinct
    sql: ${session_id} ;;
    filters: {
      field: event_type
      value: "Play_Request"
    }
  }

  measure: Distinct_Playback_Start {
    type: count_distinct
    sql: ${session_id} ;;
    filters: {
      field: event_type
      value: "Playback_Start"
    }
  }

  measure: EBVS {
    type: number
    value_format_name: percent_2
    sql: (1-(${Distinct_Playback_Start}/NULLIF(${Distinct_Play_Request}, 0))) ;;
  }

  measure: Milliseconds_Stalled_Content{
    sql: ${total_buffer_time} ;;
    type: max
  }

  dimension: playback_duration_content_tier {
    type: tier
    tiers: [0,1000,2000,5000,10000,30000,60000,120000,300000]
    sql: ${playback_duration_content} ;;
  }
  dimension: geolocation {
    type: location
    sql_latitude:${latitude_rounded} ;;
    sql_longitude:${longitude_rounded} ;;
  }

  measure: median_session_length{
    type: median
    sql: ${playback_duration_content} ;;
    filters: {
      field: event_type
      value: "Heartbeat"
    }
  }

  dimension: 30_day_window{
    case: {
      when: {
        sql: DATE_DIFF(CURRENT_DATE(),${timestamp_date},DAY) <= 30;;#update this to 30 to get real rolling window
        label: "Now"
      }
      when: {
        sql: DATE_DIFF(CURRENT_DATE(),${timestamp_date},DAY) <= 60;;
        label: "Previous"
      }
      else:  "Historical"

    }
  }


  measure: supervision_missing_play_request {
    label: "Playback start with no preceding play request in that session"
    description: "All playback starts should have a related play request"
    type: number
    value_format_name: percent_2
    sql: ((${Distinct_Playback_Start}-${Distinct_Play_Request})/NULLIF(${Distinct_Playback_Start}, 0)) ;;
  }

  measure: supervision_missing_ad_break_starts {
    label: "Ad break end with no preceding ad break start in that view"
    description: "All ad break ends should have a related ad break start within the view"
    type: number
    value_format_name: percent_2
    sql: ((${Distinct_Ad_Break_Ends}-${Distinct_Ad_Break_Starts})/NULLIF(${Distinct_Ad_Break_Ends}, 0)) ;;
  }

}
