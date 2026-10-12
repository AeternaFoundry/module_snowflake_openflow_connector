variable "openflow_connectors" {
  description = <<EOT
Map of openflow_connectors, attributes below
Required:
    - database
    - name
    - runtime
    - schema
    - from (block):
        - definition (optional)
        - path (optional)
        - stage (optional)
Optional:
    - comment
    - display_name
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    database     = string
    name         = string
    runtime      = string
    schema       = string
    comment      = optional(string)
    display_name = optional(string)
    from = object({
      definition = optional(string)
      path       = optional(string)
      stage      = optional(string)
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

