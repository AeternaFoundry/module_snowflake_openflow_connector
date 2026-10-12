output "openflow_connectors_id" {
  description = "Map of id values across all openflow_connectors, keyed the same as var.openflow_connectors except keys with no id are omitted"
  value       = { for k, v in snowflake_openflow_connector.openflow_connectors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "openflow_connectors_comment" {
  description = "Map of comment values across all openflow_connectors, keyed the same as var.openflow_connectors except keys with no comment are omitted"
  value       = { for k, v in snowflake_openflow_connector.openflow_connectors : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "openflow_connectors_database" {
  description = "Map of database values across all openflow_connectors, keyed the same as var.openflow_connectors except keys with no database are omitted"
  value       = { for k, v in snowflake_openflow_connector.openflow_connectors : k => v.database if v.database != null && length(v.database) > 0 }
}
output "openflow_connectors_describe_output" {
  description = "Map of describe_output values across all openflow_connectors, keyed the same as var.openflow_connectors except keys with no describe_output are omitted"
  value       = { for k, v in snowflake_openflow_connector.openflow_connectors : k => v.describe_output if v.describe_output != null && length(v.describe_output) > 0 }
}
output "openflow_connectors_display_name" {
  description = "Map of display_name values across all openflow_connectors, keyed the same as var.openflow_connectors except keys with no display_name are omitted"
  value       = { for k, v in snowflake_openflow_connector.openflow_connectors : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "openflow_connectors_from" {
  description = "Map of from values across all openflow_connectors, keyed the same as var.openflow_connectors except keys with no from are omitted"
  value       = { for k, v in snowflake_openflow_connector.openflow_connectors : k => one(v.from) if v.from != null && length(v.from) > 0 }
}
output "openflow_connectors_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all openflow_connectors, keyed the same as var.openflow_connectors except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_openflow_connector.openflow_connectors : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "openflow_connectors_name" {
  description = "Map of name values across all openflow_connectors, keyed the same as var.openflow_connectors except keys with no name are omitted"
  value       = { for k, v in snowflake_openflow_connector.openflow_connectors : k => v.name if v.name != null && length(v.name) > 0 }
}
output "openflow_connectors_runtime" {
  description = "Map of runtime values across all openflow_connectors, keyed the same as var.openflow_connectors except keys with no runtime are omitted"
  value       = { for k, v in snowflake_openflow_connector.openflow_connectors : k => v.runtime if v.runtime != null && length(v.runtime) > 0 }
}
output "openflow_connectors_schema" {
  description = "Map of schema values across all openflow_connectors, keyed the same as var.openflow_connectors except keys with no schema are omitted"
  value       = { for k, v in snowflake_openflow_connector.openflow_connectors : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "openflow_connectors_show_output" {
  description = "Map of show_output values across all openflow_connectors, keyed the same as var.openflow_connectors except keys with no show_output are omitted"
  value       = { for k, v in snowflake_openflow_connector.openflow_connectors : k => v.show_output if v.show_output != null && length(v.show_output) > 0 }
}

