- dashboard: threat_detection_alerts_global_view
  title: Threat Detection Alerts Global View
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: yCNivth1jSwrLYyP6MFAHp
  elements:
  - title: Alerts by Service Type
    name: Alerts by Service Type
    model: appomni_dashboards
    explore: events
    type: looker_pie
    fields: [events.principal__resource__resource_subtype, count]
    filters:
      events.principal__resource__resource_subtype: "-appomni"
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: alert
      events__about__labels__related__user.value: "-NULL"
    sorts: [count_of_metadata_product_log_id desc 0]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: count
      based_on: events.metadata__product_log_id
      _kind_hint: measure
      measure: count
      type: count_distinct
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
      Time: events.event_timestamp_date_time
      Related User: events__about__labels__related__user.filter_value
    row: 0
    col: 0
    width: 14
    height: 6
  - title: Alerts by Users
    name: Alerts by Users
    model: appomni_dashboards
    explore: events
    type: looker_grid
    fields: [events__about__labels__related__user.value, count_of_metadata_product_log_id_2]
    filters:
      events.principal__resource__resource_subtype: "-appomni,-NULL"
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: alert
    sorts: [count_of_metadata_product_log_id_2 desc 0]
    limit: 5000
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
      count_of_metadata_product_log_id_2: count
      events__about__labels__related__user.value: related.user{}
    series_cell_visualizations:
      count_of_metadata_product_log_id_2:
        is_active: false
    value_labels: labels
    label_type: labPer
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
    hidden_pivots: {}
    listen:
      Time: events.event_timestamp_date_time
      Service Type: events.principal__resource__filter_resource_subtype
    row: 0
    col: 14
    width: 10
    height: 6
  - title: Alerts IP location by Alert Rule
    name: Alerts IP location by Alert Rule
    model: appomni_dashboards
    explore: events
    type: looker_google_map
    fields: [events__principal__ip_geo_artifact.ip, events__principal__ip_geo_artifact.location__ip_location,
      events__target__ip_geo_artifact.ip, events__target__ip_geo_artifact.location__ip_location,
      total_rule_name, events__security_result.rule_name]
    filters:
      events.principal__resource__resource_subtype: "-appomni,-NULL"
      events__about__labels__related__user.value: "-NULL"
      events__security_result.rule_name: "-NULL"
    sorts: [events__principal__ip_geo_artifact.ip]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Count
      based_on: events.metadata__product_log_id
      _kind_hint: measure
      measure: total_rule_name
      type: count_distinct
      _type_hint: number
    filter_expression: |-
      ${events__principal__ip_geo_artifact.ip}!="" OR
      ${events__target__ip_geo_artifact.ip}!=""
    hidden_fields: [events__principal__ip_geo_artifact.ip, events__target__ip_geo_artifact.ip]
    hidden_points_if_no: []
    show_view_names: false
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.8
    show_region_field: false
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_latitude: 0
    map_longitude: 0
    map_zoom: 2
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_radius_min: 10
    map_marker_radius_max: 50
    map_marker_proportional_scale_type: log
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_value_scale_clamp_max:
    map_scale_indicator: 'off'
    defaults_version: 0
    hidden_pivots: {}
    map: usa
    map_projection: ''
    listen:
      Time: events.event_timestamp_date_time
      Service Type: events.principal__resource__filter_resource_subtype
      Related User: events__about__labels__related__user.filter_value
    row: 6
    col: 7
    width: 17
    height: 9
  - title: Alert IP by Alert Rule
    name: Alert IP by Alert Rule
    model: appomni_dashboards
    explore: events
    type: looker_grid
    fields: [events__about__labels__related__ip.value, events__security_result.rule_name,
      events.metadata__product_log_id]
    filters:
      events.principal__resource__resource_subtype: "-appomni,-NULL"
      events__about__labels__related__ip.value: "-NULL"
      events__security_result.rule_name: "-NULL"
    sorts: [events__about__labels__related__ip.value]
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
      events__about__labels__related__ip.value: Related IP
      events__security_result.rule_name: Rule Name
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
      Service Type: events.principal__resource__filter_resource_subtype
      Related User: events__about__labels__related__user.filter_value
    row: 6
    col: 0
    width: 7
    height: 9
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
    field: events.principal__resource__filter_resource_subtype
  - name: Related User
    title: Related User
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
    field: events__about__labels__related__user.filter_value
