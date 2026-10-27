variable "service_principal_certificates" {
  description = <<EOT
Map of service_principal_certificates, attributes below
Required:
    - service_principal_id
    - value
Optional:
    - encoding
    - end_date
    - end_date_relative
    - key_id
    - start_date
    - type
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
EOT

  type = map(object({
    service_principal_id = string
    value                = string
    encoding             = optional(string)
    end_date             = optional(string)
    end_date_relative    = optional(string)
    key_id               = optional(string)
    start_date           = optional(string)
    type                 = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.service_principal_certificates : (
        can(regex("^(/[^/]+/[^/]+)+$", v.service_principal_id))
      )
    ])
    error_message = "must be a valid Azure resource ID"
  }
  validation {
    condition = alltrue([
      for k, v in var.service_principal_certificates : (
        v.key_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.key_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.service_principal_certificates : (
        v.encoding == null || (contains(["base64", "hex", "pem"], v.encoding))
      )
    ])
    error_message = "must be one of: \"base64\", \"hex\", \"pem\""
  }
  validation {
    condition = alltrue([
      for k, v in var.service_principal_certificates : (
        v.end_date_relative == null || (length(v.end_date_relative) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

