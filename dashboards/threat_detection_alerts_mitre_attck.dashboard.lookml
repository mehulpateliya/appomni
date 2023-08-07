- dashboard: threat_detection_alerts_mitre_attck
  title: Threat Detection Alerts MITRE ATT&CK
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Xa8YVsU7HRxNulnkDv7IOX
  elements:
  - title: Service Type
    name: Service Type
    model: appomni_dashboards
    explore: events
    type: looker_pie
    fields: [count_of_metadata_product_log_id_2, events.principal__resource__resource_subtype]
    filters:
      events__security_result__rule_labels.key: '"rule_threat_framework"'
      events__security_result__rule_labels.value: MITRE ATT&CK
    sorts: [count_of_metadata_product_log_id_2 desc 0]
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
    - measure: count_of_metadata_product_log_id_2
      based_on: events.metadata__product_log_id
      expression: ''
      label: Count of Metadata Product Log ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    value_labels: labels
    label_type: lab
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    series_colors: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: count_of_metadata_product_log_id,
            id: Execution - count_of_metadata_product_log_id, name: Execution}, {
            axisId: count_of_metadata_product_log_id, id: events__security_result__attack_details__tactics.name___null
              - count_of_metadata_product_log_id, name: "∅"}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: _time
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
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
    ordering: none
    show_null_labels: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Time: events.event_timestamp_date_time
    row: 6
    col: 0
    width: 24
    height: 6
  - title: MITRE ATT&CK Tactic Alerts Over Time
    name: MITRE ATT&CK Tactic Alerts Over Time
    model: appomni_dashboards
    explore: events
    type: looker_area
    fields: [events.event_timestamp_date_time, events__security_result__attack_details__tactics.name,
      count_of_metadata_product_log_id]
    pivots: [events__security_result__attack_details__tactics.name]
    filters:
      events__security_result__rule_labels.key: '"rule_threat_framework"'
      events__security_result__rule_labels.value: MITRE ATT&CK
    sorts: [events__security_result__attack_details__tactics.name, events.event_timestamp_date_time
        desc]
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
    legend_position: right
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: count_of_metadata_product_log_id,
            id: Execution - count_of_metadata_product_log_id, name: Execution}, {
            axisId: count_of_metadata_product_log_id, id: events__security_result__attack_details__tactics.name___null
              - count_of_metadata_product_log_id, name: "∅"}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: _time
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    ordering: none
    show_null_labels: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Time: events.event_timestamp_date_time
    row: 0
    col: 12
    width: 12
    height: 6
  - title: MITRE ATT&CK Alerts Count by Threat and Technique
    name: MITRE ATT&CK Alerts Count by Threat and Technique
    model: appomni_dashboards
    explore: events
    type: looker_grid
    fields: [events__security_result__attack_details__tactics.name, events__security_result__attack_details__tactics.id,
      events__security_result__attack_details__techniques.name, events__security_result__attack_details__techniques.id,
      count_of_metadata_product_log_id]
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
      events__security_result__attack_details__tactics.name: Tactic Name
      events__security_result__attack_details__tactics.id: Tactic ID
      events__security_result__attack_details__techniques.name: Technique Name
      events__security_result__attack_details__techniques.id: Technique ID
      count_of_metadata_product_log_id: count
    series_cell_visualizations:
      count_of_metadata_product_log_id:
        is_active: false
    truncate_column_names: false
    defaults_version: 1
    listen:
      Time: events.event_timestamp_date_time
    row: 12
    col: 0
    width: 24
    height: 6
  - title: MITRE ATT&CK Alert Risk Severity
    name: MITRE ATT&CK Alert Risk Severity
    model: appomni_dashboards
    explore: events
    type: looker_pie
    fields: [count_of_metadata_product_log_id, events__security_result.severity_for_appomni]
    fill_fields: [events__security_result.severity_for_appomni]
    filters:
      events__security_result__rule_labels.key: '"rule_threat_framework"'
      events__security_result__rule_labels.value: MITRE ATT&CK
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
    label_type: lab
    series_colors:
      INFORMATIONAL: "#3bb211"
    defaults_version: 1
    listen:
      Time: events.event_timestamp_date_time
    row: 0
    col: 0
    width: 12
    height: 6
  - title: Alert Details
    name: Alert Details
    model: appomni_dashboards
    explore: events
    type: looker_grid
    fields: [events.event_timestamp_date_time, events__about__labels__related__user.value,
      events.metadata__description]
    filters:
      events__security_result__rule_labels.key: '"rule_threat_framework"'
      events__security_result__rule_labels.value: MITRE ATT&CK
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
      events.event_timestamp_date_time: _time
      events__about__labels__related__user.value: User
      events.metadata__description: message
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Time: events.event_timestamp_date_time
    row: 18
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
