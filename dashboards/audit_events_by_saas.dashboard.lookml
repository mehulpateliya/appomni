- dashboard: audit_events_by_saas
  title: Audit Events by SaaS
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: cBERJK3btuJxwtBd11ptIA
  elements:
  - title: Event Details
    name: Event Details
    model: appomni_dashboards
    explore: events
    type: looker_grid
    fields: [events.event_timestamp_date_time, events.principal__user__userid, events.metadata__product_event_type,
      events.metadata__product_log_id, events__about__labels__event__type.value]
    filters:
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: event
      events.metadata__product_event_type: "-EMPTY"
      events.principal__user__userid: "-EMPTY"
    sorts: [events.event_timestamp_date_time desc]
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
    column_order: ["$$$_row_numbers_$$$", events.event_timestamp_date_time, events.principal__user__userid,
      events__about__labels__event__type.value, events.metadata__product_event_type]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      events.event_timestamp_date_time: _time
      events.principal__user__userid: User Name
      events.metadata__product_event_type: Event Action
      events__about__labels__event__type.value: Event Type
    value_labels: labels
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: access_app - count_of_metadata_product_log_id,
            id: access_app - count_of_metadata_product_log_id, name: access_app},
          {axisId: add_mfa - count_of_metadata_product_log_id, id: add_mfa - count_of_metadata_product_log_id,
            name: add_mfa}, {axisId: add_permission - count_of_metadata_product_log_id,
            id: add_permission - count_of_metadata_product_log_id, name: add_permission},
          {axisId: add_rule - count_of_metadata_product_log_id, id: add_rule - count_of_metadata_product_log_id,
            name: add_rule}, {axisId: add_user - count_of_metadata_product_log_id,
            id: add_user - count_of_metadata_product_log_id, name: add_user}, {axisId: alert_api
              - count_of_metadata_product_log_id, id: alert_api - count_of_metadata_product_log_id,
            name: alert_api}, {axisId: approve_access - count_of_metadata_product_log_id,
            id: approve_access - count_of_metadata_product_log_id, name: approve_access},
          {axisId: approve_token - count_of_metadata_product_log_id, id: approve_token
              - count_of_metadata_product_log_id, name: approve_token}, {axisId: authenticate_user
              - count_of_metadata_product_log_id, id: authenticate_user - count_of_metadata_product_log_id,
            name: authenticate_user}, {axisId: create_account - count_of_metadata_product_log_id,
            id: create_account - count_of_metadata_product_log_id, name: create_account},
          {axisId: create_app - count_of_metadata_product_log_id, id: create_app -
              count_of_metadata_product_log_id, name: create_app}, {axisId: create_group
              - count_of_metadata_product_log_id, id: create_group - count_of_metadata_product_log_id,
            name: create_group}, {axisId: create_permission - count_of_metadata_product_log_id,
            id: create_permission - count_of_metadata_product_log_id, name: create_permission},
          {axisId: create_policy - count_of_metadata_product_log_id, id: create_policy
              - count_of_metadata_product_log_id, name: create_policy}, {axisId: create_resource
              - count_of_metadata_product_log_id, id: create_resource - count_of_metadata_product_log_id,
            name: create_resource}, {axisId: create_rule - count_of_metadata_product_log_id,
            id: create_rule - count_of_metadata_product_log_id, name: create_rule},
          {axisId: create_user - count_of_metadata_product_log_id, id: create_user
              - count_of_metadata_product_log_id, name: create_user}, {axisId: delete_policy
              - count_of_metadata_product_log_id, id: delete_policy - count_of_metadata_product_log_id,
            name: delete_policy}, {axisId: delete_rule - count_of_metadata_product_log_id,
            id: delete_rule - count_of_metadata_product_log_id, name: delete_rule},
          {axisId: disable_policy - count_of_metadata_product_log_id, id: disable_policy
              - count_of_metadata_product_log_id, name: disable_policy}, {axisId: disable_user
              - count_of_metadata_product_log_id, id: disable_user - count_of_metadata_product_log_id,
            name: disable_user}, {axisId: enable_access - count_of_metadata_product_log_id,
            id: enable_access - count_of_metadata_product_log_id, name: enable_access},
          {axisId: enable_app - count_of_metadata_product_log_id, id: enable_app -
              count_of_metadata_product_log_id, name: enable_app}, {axisId: enable_policy
              - count_of_metadata_product_log_id, id: enable_policy - count_of_metadata_product_log_id,
            name: enable_policy}, {axisId: enable_setting - count_of_metadata_product_log_id,
            id: enable_setting - count_of_metadata_product_log_id, name: enable_setting},
          {axisId: enable_user - count_of_metadata_product_log_id, id: enable_user
              - count_of_metadata_product_log_id, name: enable_user}, {axisId: end_session
              - count_of_metadata_product_log_id, id: end_session - count_of_metadata_product_log_id,
            name: end_session}, {axisId: end_task - count_of_metadata_product_log_id,
            id: end_task - count_of_metadata_product_log_id, name: end_task}, {axisId: evaluate_policy
              - count_of_metadata_product_log_id, id: evaluate_policy - count_of_metadata_product_log_id,
            name: evaluate_policy}, {axisId: get_token - count_of_metadata_product_log_id,
            id: get_token - count_of_metadata_product_log_id, name: get_token}, {
            axisId: install_app - count_of_metadata_product_log_id, id: install_app
              - count_of_metadata_product_log_id, name: install_app}, {axisId: login_user
              - count_of_metadata_product_log_id, id: login_user - count_of_metadata_product_log_id,
            name: login_user}, {axisId: logout_user - count_of_metadata_product_log_id,
            id: logout_user - count_of_metadata_product_log_id, name: logout_user},
          {axisId: notify_workflow - count_of_metadata_product_log_id, id: notify_workflow
              - count_of_metadata_product_log_id, name: notify_workflow}, {axisId: read_rule
              - count_of_metadata_product_log_id, id: read_rule - count_of_metadata_product_log_id,
            name: read_rule}, {axisId: remove_mfa - count_of_metadata_product_log_id,
            id: remove_mfa - count_of_metadata_product_log_id, name: remove_mfa},
          {axisId: request_authorization - count_of_metadata_product_log_id, id: request_authorization
              - count_of_metadata_product_log_id, name: request_authorization}, {
            axisId: reset_password - count_of_metadata_product_log_id, id: reset_password
              - count_of_metadata_product_log_id, name: reset_password}, {axisId: start_task
              - count_of_metadata_product_log_id, id: start_task - count_of_metadata_product_log_id,
            name: start_task}, {axisId: synchronize_user - count_of_metadata_product_log_id,
            id: synchronize_user - count_of_metadata_product_log_id, name: synchronize_user},
          {axisId: unknown - count_of_metadata_product_log_id, id: unknown - count_of_metadata_product_log_id,
            name: unknown}, {axisId: update_app - count_of_metadata_product_log_id,
            id: update_app - count_of_metadata_product_log_id, name: update_app},
          {axisId: update_key - count_of_metadata_product_log_id, id: update_key -
              count_of_metadata_product_log_id, name: update_key}, {axisId: update_password
              - count_of_metadata_product_log_id, id: update_password - count_of_metadata_product_log_id,
            name: update_password}, {axisId: update_permission - count_of_metadata_product_log_id,
            id: update_permission - count_of_metadata_product_log_id, name: update_permission},
          {axisId: update_policy - count_of_metadata_product_log_id, id: update_policy
              - count_of_metadata_product_log_id, name: update_policy}, {axisId: update_resource
              - count_of_metadata_product_log_id, id: update_resource - count_of_metadata_product_log_id,
            name: update_resource}, {axisId: update_role - count_of_metadata_product_log_id,
            id: update_role - count_of_metadata_product_log_id, name: update_role},
          {axisId: update_rule - count_of_metadata_product_log_id, id: update_rule
              - count_of_metadata_product_log_id, name: update_rule}, {axisId: update_setting
              - count_of_metadata_product_log_id, id: update_setting - count_of_metadata_product_log_id,
            name: update_setting}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    stacking: normal
    legend_position: right
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
    hidden_fields: [events.metadata__product_log_id]
    listen:
      ServiceType: events.principal__resource__resource_subtype
      Event Action: events.metadata__product_filter_event_type
      User Name: events.principal__user__filter_userid
      Time: events.event_timestamp_date_time
    row: 6
    col: 0
    width: 24
    height: 6
  - title: Events
    name: Events
    model: appomni_dashboards
    explore: events
    type: looker_column
    fields: [count_of_metadata_product_log_id, events.metadata__product_event_type,
      events.event_timestamp_date_time]
    pivots: [events.metadata__product_event_type]
    filters:
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: event
      events.metadata__product_event_type: "-EMPTY"
    sorts: [events.metadata__product_event_type, events.event_timestamp_date_time
        desc]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: access_app - count_of_metadata_product_log_id,
            id: access_app - count_of_metadata_product_log_id, name: access_app},
          {axisId: add_mfa - count_of_metadata_product_log_id, id: add_mfa - count_of_metadata_product_log_id,
            name: add_mfa}, {axisId: add_permission - count_of_metadata_product_log_id,
            id: add_permission - count_of_metadata_product_log_id, name: add_permission},
          {axisId: add_rule - count_of_metadata_product_log_id, id: add_rule - count_of_metadata_product_log_id,
            name: add_rule}, {axisId: add_user - count_of_metadata_product_log_id,
            id: add_user - count_of_metadata_product_log_id, name: add_user}, {axisId: alert_api
              - count_of_metadata_product_log_id, id: alert_api - count_of_metadata_product_log_id,
            name: alert_api}, {axisId: approve_access - count_of_metadata_product_log_id,
            id: approve_access - count_of_metadata_product_log_id, name: approve_access},
          {axisId: approve_token - count_of_metadata_product_log_id, id: approve_token
              - count_of_metadata_product_log_id, name: approve_token}, {axisId: authenticate_user
              - count_of_metadata_product_log_id, id: authenticate_user - count_of_metadata_product_log_id,
            name: authenticate_user}, {axisId: create_account - count_of_metadata_product_log_id,
            id: create_account - count_of_metadata_product_log_id, name: create_account},
          {axisId: create_app - count_of_metadata_product_log_id, id: create_app -
              count_of_metadata_product_log_id, name: create_app}, {axisId: create_group
              - count_of_metadata_product_log_id, id: create_group - count_of_metadata_product_log_id,
            name: create_group}, {axisId: create_permission - count_of_metadata_product_log_id,
            id: create_permission - count_of_metadata_product_log_id, name: create_permission},
          {axisId: create_policy - count_of_metadata_product_log_id, id: create_policy
              - count_of_metadata_product_log_id, name: create_policy}, {axisId: create_resource
              - count_of_metadata_product_log_id, id: create_resource - count_of_metadata_product_log_id,
            name: create_resource}, {axisId: create_rule - count_of_metadata_product_log_id,
            id: create_rule - count_of_metadata_product_log_id, name: create_rule},
          {axisId: create_user - count_of_metadata_product_log_id, id: create_user
              - count_of_metadata_product_log_id, name: create_user}, {axisId: delete_policy
              - count_of_metadata_product_log_id, id: delete_policy - count_of_metadata_product_log_id,
            name: delete_policy}, {axisId: delete_rule - count_of_metadata_product_log_id,
            id: delete_rule - count_of_metadata_product_log_id, name: delete_rule},
          {axisId: disable_policy - count_of_metadata_product_log_id, id: disable_policy
              - count_of_metadata_product_log_id, name: disable_policy}, {axisId: disable_user
              - count_of_metadata_product_log_id, id: disable_user - count_of_metadata_product_log_id,
            name: disable_user}, {axisId: enable_access - count_of_metadata_product_log_id,
            id: enable_access - count_of_metadata_product_log_id, name: enable_access},
          {axisId: enable_app - count_of_metadata_product_log_id, id: enable_app -
              count_of_metadata_product_log_id, name: enable_app}, {axisId: enable_policy
              - count_of_metadata_product_log_id, id: enable_policy - count_of_metadata_product_log_id,
            name: enable_policy}, {axisId: enable_setting - count_of_metadata_product_log_id,
            id: enable_setting - count_of_metadata_product_log_id, name: enable_setting},
          {axisId: enable_user - count_of_metadata_product_log_id, id: enable_user
              - count_of_metadata_product_log_id, name: enable_user}, {axisId: end_session
              - count_of_metadata_product_log_id, id: end_session - count_of_metadata_product_log_id,
            name: end_session}, {axisId: end_task - count_of_metadata_product_log_id,
            id: end_task - count_of_metadata_product_log_id, name: end_task}, {axisId: evaluate_policy
              - count_of_metadata_product_log_id, id: evaluate_policy - count_of_metadata_product_log_id,
            name: evaluate_policy}, {axisId: get_token - count_of_metadata_product_log_id,
            id: get_token - count_of_metadata_product_log_id, name: get_token}, {
            axisId: install_app - count_of_metadata_product_log_id, id: install_app
              - count_of_metadata_product_log_id, name: install_app}, {axisId: login_user
              - count_of_metadata_product_log_id, id: login_user - count_of_metadata_product_log_id,
            name: login_user}, {axisId: logout_user - count_of_metadata_product_log_id,
            id: logout_user - count_of_metadata_product_log_id, name: logout_user},
          {axisId: notify_workflow - count_of_metadata_product_log_id, id: notify_workflow
              - count_of_metadata_product_log_id, name: notify_workflow}, {axisId: read_rule
              - count_of_metadata_product_log_id, id: read_rule - count_of_metadata_product_log_id,
            name: read_rule}, {axisId: remove_mfa - count_of_metadata_product_log_id,
            id: remove_mfa - count_of_metadata_product_log_id, name: remove_mfa},
          {axisId: request_authorization - count_of_metadata_product_log_id, id: request_authorization
              - count_of_metadata_product_log_id, name: request_authorization}, {
            axisId: reset_password - count_of_metadata_product_log_id, id: reset_password
              - count_of_metadata_product_log_id, name: reset_password}, {axisId: start_task
              - count_of_metadata_product_log_id, id: start_task - count_of_metadata_product_log_id,
            name: start_task}, {axisId: synchronize_user - count_of_metadata_product_log_id,
            id: synchronize_user - count_of_metadata_product_log_id, name: synchronize_user},
          {axisId: unknown - count_of_metadata_product_log_id, id: unknown - count_of_metadata_product_log_id,
            name: unknown}, {axisId: update_app - count_of_metadata_product_log_id,
            id: update_app - count_of_metadata_product_log_id, name: update_app},
          {axisId: update_key - count_of_metadata_product_log_id, id: update_key -
              count_of_metadata_product_log_id, name: update_key}, {axisId: update_password
              - count_of_metadata_product_log_id, id: update_password - count_of_metadata_product_log_id,
            name: update_password}, {axisId: update_permission - count_of_metadata_product_log_id,
            id: update_permission - count_of_metadata_product_log_id, name: update_permission},
          {axisId: update_policy - count_of_metadata_product_log_id, id: update_policy
              - count_of_metadata_product_log_id, name: update_policy}, {axisId: update_resource
              - count_of_metadata_product_log_id, id: update_resource - count_of_metadata_product_log_id,
            name: update_resource}, {axisId: update_role - count_of_metadata_product_log_id,
            id: update_role - count_of_metadata_product_log_id, name: update_role},
          {axisId: update_rule - count_of_metadata_product_log_id, id: update_rule
              - count_of_metadata_product_log_id, name: update_rule}, {axisId: update_setting
              - count_of_metadata_product_log_id, id: update_setting - count_of_metadata_product_log_id,
            name: update_setting}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: _time
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    hidden_pivots: {}
    listen:
      ServiceType: events.principal__resource__resource_subtype
      Time: events.event_timestamp_date_time
    row: 0
    col: 0
    width: 12
    height: 6
  - title: User Name
    name: User Name
    model: appomni_dashboards
    explore: events
    type: looker_pie
    fields: [count, events.principal__user__userid]
    filters:
      events__about__labels.key: '"event_kind"'
      events__about__labels.value: event
      events.metadata__product_event_type: "-EMPTY"
      events.principal__user__userid: "-EMPTY"
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
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: access_app - count_of_metadata_product_log_id,
            id: access_app - count_of_metadata_product_log_id, name: access_app},
          {axisId: add_mfa - count_of_metadata_product_log_id, id: add_mfa - count_of_metadata_product_log_id,
            name: add_mfa}, {axisId: add_permission - count_of_metadata_product_log_id,
            id: add_permission - count_of_metadata_product_log_id, name: add_permission},
          {axisId: add_rule - count_of_metadata_product_log_id, id: add_rule - count_of_metadata_product_log_id,
            name: add_rule}, {axisId: add_user - count_of_metadata_product_log_id,
            id: add_user - count_of_metadata_product_log_id, name: add_user}, {axisId: alert_api
              - count_of_metadata_product_log_id, id: alert_api - count_of_metadata_product_log_id,
            name: alert_api}, {axisId: approve_access - count_of_metadata_product_log_id,
            id: approve_access - count_of_metadata_product_log_id, name: approve_access},
          {axisId: approve_token - count_of_metadata_product_log_id, id: approve_token
              - count_of_metadata_product_log_id, name: approve_token}, {axisId: authenticate_user
              - count_of_metadata_product_log_id, id: authenticate_user - count_of_metadata_product_log_id,
            name: authenticate_user}, {axisId: create_account - count_of_metadata_product_log_id,
            id: create_account - count_of_metadata_product_log_id, name: create_account},
          {axisId: create_app - count_of_metadata_product_log_id, id: create_app -
              count_of_metadata_product_log_id, name: create_app}, {axisId: create_group
              - count_of_metadata_product_log_id, id: create_group - count_of_metadata_product_log_id,
            name: create_group}, {axisId: create_permission - count_of_metadata_product_log_id,
            id: create_permission - count_of_metadata_product_log_id, name: create_permission},
          {axisId: create_policy - count_of_metadata_product_log_id, id: create_policy
              - count_of_metadata_product_log_id, name: create_policy}, {axisId: create_resource
              - count_of_metadata_product_log_id, id: create_resource - count_of_metadata_product_log_id,
            name: create_resource}, {axisId: create_rule - count_of_metadata_product_log_id,
            id: create_rule - count_of_metadata_product_log_id, name: create_rule},
          {axisId: create_user - count_of_metadata_product_log_id, id: create_user
              - count_of_metadata_product_log_id, name: create_user}, {axisId: delete_policy
              - count_of_metadata_product_log_id, id: delete_policy - count_of_metadata_product_log_id,
            name: delete_policy}, {axisId: delete_rule - count_of_metadata_product_log_id,
            id: delete_rule - count_of_metadata_product_log_id, name: delete_rule},
          {axisId: disable_policy - count_of_metadata_product_log_id, id: disable_policy
              - count_of_metadata_product_log_id, name: disable_policy}, {axisId: disable_user
              - count_of_metadata_product_log_id, id: disable_user - count_of_metadata_product_log_id,
            name: disable_user}, {axisId: enable_access - count_of_metadata_product_log_id,
            id: enable_access - count_of_metadata_product_log_id, name: enable_access},
          {axisId: enable_app - count_of_metadata_product_log_id, id: enable_app -
              count_of_metadata_product_log_id, name: enable_app}, {axisId: enable_policy
              - count_of_metadata_product_log_id, id: enable_policy - count_of_metadata_product_log_id,
            name: enable_policy}, {axisId: enable_setting - count_of_metadata_product_log_id,
            id: enable_setting - count_of_metadata_product_log_id, name: enable_setting},
          {axisId: enable_user - count_of_metadata_product_log_id, id: enable_user
              - count_of_metadata_product_log_id, name: enable_user}, {axisId: end_session
              - count_of_metadata_product_log_id, id: end_session - count_of_metadata_product_log_id,
            name: end_session}, {axisId: end_task - count_of_metadata_product_log_id,
            id: end_task - count_of_metadata_product_log_id, name: end_task}, {axisId: evaluate_policy
              - count_of_metadata_product_log_id, id: evaluate_policy - count_of_metadata_product_log_id,
            name: evaluate_policy}, {axisId: get_token - count_of_metadata_product_log_id,
            id: get_token - count_of_metadata_product_log_id, name: get_token}, {
            axisId: install_app - count_of_metadata_product_log_id, id: install_app
              - count_of_metadata_product_log_id, name: install_app}, {axisId: login_user
              - count_of_metadata_product_log_id, id: login_user - count_of_metadata_product_log_id,
            name: login_user}, {axisId: logout_user - count_of_metadata_product_log_id,
            id: logout_user - count_of_metadata_product_log_id, name: logout_user},
          {axisId: notify_workflow - count_of_metadata_product_log_id, id: notify_workflow
              - count_of_metadata_product_log_id, name: notify_workflow}, {axisId: read_rule
              - count_of_metadata_product_log_id, id: read_rule - count_of_metadata_product_log_id,
            name: read_rule}, {axisId: remove_mfa - count_of_metadata_product_log_id,
            id: remove_mfa - count_of_metadata_product_log_id, name: remove_mfa},
          {axisId: request_authorization - count_of_metadata_product_log_id, id: request_authorization
              - count_of_metadata_product_log_id, name: request_authorization}, {
            axisId: reset_password - count_of_metadata_product_log_id, id: reset_password
              - count_of_metadata_product_log_id, name: reset_password}, {axisId: start_task
              - count_of_metadata_product_log_id, id: start_task - count_of_metadata_product_log_id,
            name: start_task}, {axisId: synchronize_user - count_of_metadata_product_log_id,
            id: synchronize_user - count_of_metadata_product_log_id, name: synchronize_user},
          {axisId: unknown - count_of_metadata_product_log_id, id: unknown - count_of_metadata_product_log_id,
            name: unknown}, {axisId: update_app - count_of_metadata_product_log_id,
            id: update_app - count_of_metadata_product_log_id, name: update_app},
          {axisId: update_key - count_of_metadata_product_log_id, id: update_key -
              count_of_metadata_product_log_id, name: update_key}, {axisId: update_password
              - count_of_metadata_product_log_id, id: update_password - count_of_metadata_product_log_id,
            name: update_password}, {axisId: update_permission - count_of_metadata_product_log_id,
            id: update_permission - count_of_metadata_product_log_id, name: update_permission},
          {axisId: update_policy - count_of_metadata_product_log_id, id: update_policy
              - count_of_metadata_product_log_id, name: update_policy}, {axisId: update_resource
              - count_of_metadata_product_log_id, id: update_resource - count_of_metadata_product_log_id,
            name: update_resource}, {axisId: update_role - count_of_metadata_product_log_id,
            id: update_role - count_of_metadata_product_log_id, name: update_role},
          {axisId: update_rule - count_of_metadata_product_log_id, id: update_rule
              - count_of_metadata_product_log_id, name: update_rule}, {axisId: update_setting
              - count_of_metadata_product_log_id, id: update_setting - count_of_metadata_product_log_id,
            name: update_setting}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: right
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
      ServiceType: events.principal__resource__resource_subtype
      Event Action: events.metadata__product_filter_event_type
      Time: events.event_timestamp_date_time
    row: 0
    col: 12
    width: 12
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
  - name: ServiceType
    title: ServiceType
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: appomni_dashboards
    explore: events
    listens_to_filters: []
    field: events.principal__resource__resource_subtype
  - name: User Name
    title: User Name
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
    field: events.principal__user__filter_userid
  - name: Event Action
    title: Event Action
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
    field: events.metadata__product_filter_event_type
