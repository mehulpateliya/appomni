project_name: "appomni_dashboards"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }

constant: CONNECTION_NAME{
  value: "chronicle"
  export: override_required
}
