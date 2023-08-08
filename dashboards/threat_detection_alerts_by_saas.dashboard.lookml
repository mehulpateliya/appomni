- dashboard: threat_detection_alerts_by_saas
  title: Threat Detection Alerts by SaaS
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: r3yyAl2Yme8cbgzCjr4m3l
  elements:
  - title: Alerts
    name: Alerts
    model: appomni_dashboards
    explore: events
    type: looker_area
    fields: [events.event_timestamp_date_time, events__security_result.rule_name,
      count_of_metadata_product_log_id]
    pivots: [events__security_result.rule_name]
    filters:
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: alert
      events__security_result.rule_name: "-EMPTY"
    sorts: [events__security_result.rule_name, events.event_timestamp_date_time desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_metadata_product_log_id
      based_on: events.metadata__product_log_id
      expression: ''
      label: Count of Metadata Product Log ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: count_of_metadata_product_log_id,
            id: External Application Installed - count_of_metadata_product_log_id,
            name: External Application Installed}, {axisId: count_of_metadata_product_log_id,
            id: Sign-in Policy or Rule Modified - count_of_metadata_product_log_id,
            name: Sign-in Policy or Rule Modified}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: _time
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Time: events.event_timestamp_date_time
      ServiceType: events.principal__resource__resource_subtype
    row: 0
    col: 0
    width: 24
    height: 5
  - title: Alerts
    name: Alerts (2)
    model: appomni_dashboards
    explore: events
    type: looker_grid
    fields: [events.event_timestamp_date_time, events__about__labels__related__user.value,
      events__security_result.rule_name, events__about__labels__related__event.value]
    filters:
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: alert
      events__security_result.rule_name: "-EMPTY"
    sorts: [events.event_timestamp_date_time desc]
    limit: 500
    column_limit: 50
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
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      events__about__labels__related__event.value: related.events{}
      events__about__labels__related__user.value: User
      events__security_result.rule_name: Alert Rule
      events.event_timestamp_date_time: _time
    defaults_version: 1
    listen:
      Time: events.event_timestamp_date_time
      ServiceType: events.principal__resource__resource_subtype
    row: 11
    col: 0
    width: 24
    height: 5
  - title: Related Events Details
    name: Related Events Details
    model: appomni_dashboards
    explore: events
    type: looker_grid
    fields: [events.event_timestamp_date_time, events.metadata__product_event_type,
      events.principal__user__userid, events__security_result.action_details, events__principal__ip.events__principal__ip,
      events.principal__resource__name, events.metadata__description]
    filters:
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: event
      events.principal__user__userid: "-EMPTY"
    sorts: [events.event_timestamp_date_time desc]
    limit: 500
    column_limit: 50
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
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      events.metadata__description: message
      events.principal__resource__name: appomni.service.name
      events.metadata__product_event_type: event.action
      events.principal__user__userid: user.name
      events__security_result.action_details: event.outcome
      events__principal__ip.events__principal__ip: source.ip
      events.event_timestamp_date_time: _time
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
    defaults_version: 1
    column_order: ["$$$_row_numbers_$$$", events.event_timestamp_date_time, events.metadata__product_event_type,
      events.principal__user__userid, events__security_result.action_details, events__principal__ip.events__principal__ip,
      events.principal__resource__name, events.metadata__description]
    listen:
      Time: events.event_timestamp_date_time
      ServiceType: events.principal__resource__resource_subtype
      Filter Related Events Details: events.metadata__product_log_id
    row: 16
    col: 0
    width: 24
    height: 6
  - title: MITRE ATT&CK Tactic
    name: MITRE ATT&CK Tactic
    model: appomni_dashboards
    explore: events
    type: looker_pie
    fields: [events__security_result__attack_details__tactics.name, count_of_metadata_product_log_id]
    filters:
      events__security_result__attack_details__tactics.name: "-EMPTY"
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: alert
    sorts: [count_of_metadata_product_log_id desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_metadata_product_log_id
      based_on: events.metadata__product_log_id
      expression: ''
      label: Count of Metadata Product Log ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    value_labels: labels
    label_type: labPer
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
    listen:
      ServiceType: events.principal__resource__resource_subtype
      Time: events.event_timestamp_date_time
    row: 5
    col: 12
    width: 12
    height: 6
  - title: Alert Severity
    name: Alert Severity
    model: appomni_dashboards
    explore: events
    type: looker_pie
    fields: [count_of_metadata_product_log_id, events__security_result.severity_for_appomni]
    filters:
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: alert
      events__security_result.severity_for_appomni: "-Unknown"
    sorts: [count_of_metadata_product_log_id desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_metadata_product_log_id
      based_on: events.metadata__product_log_id
      expression: ''
      label: Count of Metadata Product Log ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    value_labels: labels
    label_type: labPer
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
    listen:
      ServiceType: events.principal__resource__resource_subtype
      Time: events.event_timestamp_date_time
    row: 5
    col: 0
    width: 12
    height: 6
  filters:
  - name: Time
    title: Time
    type: field_filter
    default_value: 7 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: appomni_dashboards
    explore: events
    listens_to_filters: []
    field: events.event_timestamp_date_time
  - name: ServiceType
    title: ServiceType
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: appomni_dashboards
    explore: events
    listens_to_filters: []
    field: events.principal__resource__resource_subtype
  - name: Filter Related Events Details
    title: Filter Related Events Details
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: popover
    model: appomni_dashboards
    explore: events
    listens_to_filters: []
    field: events.metadata__product_log_id
