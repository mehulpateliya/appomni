- dashboard: threat_detection_alerts_overview
  title: Threat Detection Alerts Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 8AXKIqYBlqsp3NKQ4D7jim
  elements:
  - title: Alert Severity
    name: Alert Severity
    model: appomni_dashboards
    explore: events
    type: looker_pie
    fields: [count, events__security_result.severity_for_appomni, events__security_result.severity_details]
    filters:
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: alert
      events__security_result.severity_details: "-EMPTY"
    sorts: [count desc 0]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Count
      based_on: events.metadata__product_log_id
      _kind_hint: measure
      measure: count
      type: count_distinct
      _type_hint: number
    value_labels: labels
    label_type: labPer
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
    defaults_version: 1
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [events__security_result.severity_details]
    listen:
      Time: events.event_timestamp_date_time
      Service Type: events.principal__resource__resource_subtype
    row: 0
    col: 0
    width: 7
    height: 6
  - title: Service Type
    name: Service Type
    model: appomni_dashboards
    explore: events
    type: looker_pie
    fields: [count, events.principal__resource__resource_subtype]
    filters:
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: alert
      events__security_result.severity_details: "-EMPTY"
      events.principal__resource__resource_subtype: "-EMPTY"
    sorts: [count desc 0]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Count
      based_on: events.metadata__product_log_id
      _kind_hint: measure
      measure: count
      type: count_distinct
      _type_hint: number
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd
      palette_id: b0768e0d-03b8-4c12-9e30-9ada6affc357
      options:
        steps: 5
    series_colors: {}
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
    defaults_version: 1
    listen:
      Time: events.event_timestamp_date_time
      Alert Severity: events__security_result.filter_severity_for_appomni
    row: 0
    col: 7
    width: 7
    height: 6
  - title: Alerts
    name: Alerts
    model: appomni_dashboards
    explore: events
    type: looker_area
    fields: [count_of_metadata_product_log_id, events__security_result.rule_name,
      events.event_timestamp_date_time]
    pivots: [events__security_result.rule_name]
    filters:
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: alert
      events__security_result.severity_details: "-EMPTY"
      events__security_result.rule_name: "-EMPTY"
    sorts: [events__security_result.rule_name, count_of_metadata_product_log_id desc
        0]
    limit: 5000
    column_limit: 500
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
    x_axis_scale: time
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
    hidden_pivots: {}
    hidden_series: []
    listen:
      Time: events.event_timestamp_date_time
      Alert Severity: events__security_result.filter_severity_for_appomni
      Service Type: events.principal__resource__resource_subtype
    row: 0
    col: 14
    width: 10
    height: 6
  - title: Alerts With Related Events
    name: Alerts With Related Events
    model: appomni_dashboards
    explore: events
    type: looker_grid
    fields: [events.event_timestamp_date_time, events__about__labels__related__user.value,
      events__security_result.rule_name, events__about__labels__related__event.value,
      events.metadata__product_log_id]
    filters:
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: alert
      events__security_result.rule_name: "-EMPTY"
      events__about__labels__related__user.value: "-EMPTY"
      events__security_result.severity_details: "-EMPTY"
    sorts: [events.event_timestamp_date_time desc]
    limit: 5000
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", events.event_timestamp_date_time, events__about__labels__related__user.value,
      events__security_result.rule_name, events__about__labels__related__event.value]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      events__about__labels__related__event.value: related.event{}
      events__about__labels__related__user.value: User
      events.event_timestamp_date_time: _time
      events__security_result.rule_name: Alert Rule
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
    hidden_fields: [events.metadata__product_log_id]
    listen:
      Time: events.event_timestamp_date_time
      Alert Severity: events__security_result.filter_severity_for_appomni
      Service Type: events.principal__resource__resource_subtype
      Rule Name: events__security_result.filter_rule_name
    row: 6
    col: 0
    width: 24
    height: 6
  - title: Related Events Details
    name: Related Events Details
    model: appomni_dashboards
    explore: events
    type: looker_grid
    fields: [events.event_timestamp_date_time, events.metadata__product_event_type,
      events.principal__user__userid, events__security_result.action_details, events__principal__ip.events__principal__ip,
      events__about__labels__service__type.value, events.metadata__product_log_id]
    filters:
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: event
      events.principal__user__userid: "-EMPTY"
    sorts: [events.event_timestamp_date_time desc]
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
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
      events__principal__ip.events__principal__ip: source.ip
      events.event_timestamp_date_time: _time
      events.metadata__product_event_type: event.action
      events.principal__user__userid: user.name
      events__security_result.action_details: event.outcome
      events__about__labels__service__type.value: service.type
    truncate_column_names: false
    defaults_version: 1
    hidden_fields: [events.metadata__product_log_id]
    listen:
      Event Id: events.metadata__product_log_id
    row: 12
    col: 0
    width: 24
    height: 6
  filters:
  - name: Time
    title: Time
    type: field_filter
    default_value: 7 day
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: appomni_dashboards
    explore: events
    listens_to_filters: []
    field: events.event_timestamp_date_time
  - name: Alert Severity
    title: Alert Severity
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: appomni_dashboards
    explore: events
    listens_to_filters: []
    field: events__security_result.filter_severity_for_appomni
  - name: Service Type
    title: Service Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: appomni_dashboards
    explore: events
    listens_to_filters: []
    field: events.principal__resource__resource_subtype
  - name: Rule Name
    title: Rule Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: appomni_dashboards
    explore: events
    listens_to_filters: []
    field: events__security_result.filter_rule_name
  - name: Event Id
    title: Event Id
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: appomni_dashboards
    explore: events
    listens_to_filters: []
    field: events.metadata__product_log_id
