- dashboard: audit_events_overview
  title: Audit Events Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: K4VYtehiNcXmcpyxGG29Y2
  elements:
  - title: Total Events
    name: Total Events
    model: appomni_dashboards
    explore: events
    type: single_value
    fields: [count_of_metadata_product_log_id]
    filters:
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: event
      events.principal__resource__resource_subtype: "-appomni,-EMPTY"
      events.principal__resource__name: "-EMPTY"
    sorts: [count_of_metadata_product_log_id desc 0]
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Events
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    listen:
      Time: events.event_timestamp_date_time
      Service Type: events.principal__resource__filter_resource_subtype
      Service Name: events.principal__filter_resource__name
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Events By Service Name
    name: Events By Service Name
    model: appomni_dashboards
    explore: events
    type: looker_pie
    fields: [count, events.principal__resource__name]
    filters:
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: event
      events.principal__resource__resource_subtype: "-appomni,-EMPTY"
      events.principal__resource__name: "-EMPTY"
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
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Time: events.event_timestamp_date_time
      Service Type: events.principal__resource__filter_resource_subtype
      Service Name: events.principal__filter_resource__name
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Events By Service Over Time
    name: Events By Service Over Time
    model: appomni_dashboards
    explore: events
    type: looker_column
    fields: [count_of_metadata_product_log_id, events.principal__resource__name, events.event_timestamp_date_time]
    pivots: [events.principal__resource__name]
    filters:
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: event
      events.principal__resource__resource_subtype: "-appomni,-EMPTY"
      events.principal__resource__name: "-EMPTY"
    sorts: [events.principal__resource__name, count_of_metadata_product_log_id desc
        0]
    limit: 500
    column_limit: 500
    total: true
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: AppOmni - count_of_metadata_product_log_id,
            id: AppOmni - count_of_metadata_product_log_id, name: AppOmni}, {axisId: Okta
              Dev - count_of_metadata_product_log_id, id: Okta Dev - count_of_metadata_product_log_id,
            name: Okta Dev}, {axisId: Salesforce Dev - count_of_metadata_product_log_id,
            id: Salesforce Dev - count_of_metadata_product_log_id, name: Salesforce
              Dev}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: _time
    x_axis_zoom: true
    y_axis_zoom: true
    x_axis_datetime_label: ''
    value_labels: labels
    label_type: labPer
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_pivots: {}
    listen:
      Time: events.event_timestamp_date_time
      Service Type: events.principal__resource__filter_resource_subtype
      Service Name: events.principal__filter_resource__name
    row: 6
    col: 12
    width: 12
    height: 6
  - title: Service Type Action Count
    name: Service Type Action Count
    model: appomni_dashboards
    explore: events
    type: looker_grid
    fields: [count_of_metadata_product_log_id, events.principal__resource__resource_subtype,
      events.metadata__product_event_type]
    filters:
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: event
      events.principal__resource__resource_subtype: "-appomni,-EMPTY"
      events.principal__resource__name: "-EMPTY"
      events.metadata__product_event_type: "-EMPTY"
    sorts: [count_of_metadata_product_log_id desc 0]
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
      events.principal__resource__resource_subtype: Service Type
      count_of_metadata_product_log_id: Count
      events.metadata__product_event_type: Action
    series_cell_visualizations:
      count_of_metadata_product_log_id:
        is_active: false
    value_labels: labels
    label_type: labPer
    defaults_version: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Time: events.event_timestamp_date_time
      Service Type: events.principal__resource__filter_resource_subtype
      Service Name: events.principal__filter_resource__name
    row: 6
    col: 0
    width: 12
    height: 6
  - title: Successful Logins Over Time
    name: Successful Logins Over Time
    model: appomni_dashboards
    explore: events
    type: looker_area
    fields: [count_of_metadata_product_log_id, events.principal__resource__name, events.event_timestamp_date_time]
    pivots: [events.principal__resource__name]
    filters:
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: event
      events.metadata__product_event_type: '"login_user"'
      events__security_result.action_details: success
      events.principal__resource__resource_subtype: "-appomni,-EMPTY"
      events.principal__resource__name: "-EMPTY"
    sorts: [events.principal__resource__name, count_of_metadata_product_log_id desc
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
    legend_position: right
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
            id: AppOmni - count_of_metadata_product_log_id, name: AppOmni}, {axisId: count_of_metadata_product_log_id,
            id: Okta Dev - count_of_metadata_product_log_id, name: Okta Dev}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: _time
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    value_labels: labels
    label_type: labPer
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_pivots: {}
    listen:
      Time: events.event_timestamp_date_time
      Service Type: events.principal__resource__filter_resource_subtype
      Service Name: events.principal__filter_resource__name
    row: 12
    col: 0
    width: 24
    height: 6
  - title: Failed Logins Over Time
    name: Failed Logins Over Time
    model: appomni_dashboards
    explore: events
    type: looker_area
    fields: [count_of_metadata_product_log_id, events.principal__resource__name, events.event_timestamp_date_time]
    pivots: [events.principal__resource__name]
    filters:
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: event
      events.metadata__product_event_type: '"login_user"'
      events__security_result.action_details: failure
      events.principal__resource__resource_subtype: "-appomni,-EMPTY"
      events.principal__resource__name: "-EMPTY"
    sorts: [events.principal__resource__name, count_of_metadata_product_log_id desc
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
    legend_position: right
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
            id: AppOmni - count_of_metadata_product_log_id, name: AppOmni}, {axisId: count_of_metadata_product_log_id,
            id: Okta Dev - count_of_metadata_product_log_id, name: Okta Dev}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: _time
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    value_labels: labels
    label_type: labPer
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_pivots: {}
    listen:
      Time: events.event_timestamp_date_time
      Service Type: events.principal__resource__filter_resource_subtype
      Service Name: events.principal__filter_resource__name
    row: 18
    col: 0
    width: 24
    height: 6
  - title: Events By Service Type
    name: Events By Service Type
    model: appomni_dashboards
    explore: events
    type: looker_pie
    fields: [count, events.principal__resource__resource_subtype]
    filters:
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: event
      events.principal__resource__resource_subtype: "-appomni,-EMPTY"
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Time: events.event_timestamp_date_time
    row: 0
    col: 8
    width: 8
    height: 6
  filters:
  - name: Time
    title: Time
    type: field_filter
    default_value: 24 hour
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
  - name: Service Name
    title: Service Name
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
    field: events.principal__filter_resource__name
