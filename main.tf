resource "snowflake_openflow_connector" "openflow_connectors" {
  for_each = var.openflow_connectors

  database     = each.value.database
  name         = each.value.name
  runtime      = each.value.runtime
  schema       = each.value.schema
  comment      = each.value.comment
  display_name = each.value.display_name

  from {
    definition = each.value.from.definition
    path       = each.value.from.path
    stage      = each.value.from.stage
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

