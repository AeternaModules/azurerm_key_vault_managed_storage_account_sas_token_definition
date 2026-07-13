variable "key_vault_managed_storage_account_sas_token_definitions" {
  description = <<EOT
Map of key_vault_managed_storage_account_sas_token_definitions, attributes below
Required:
    - managed_storage_account_id
    - name
    - sas_template_uri
    - sas_type
    - validity_period
Optional:
    - tags
EOT

  type = map(object({
    managed_storage_account_id = string
    name                       = string
    sas_template_uri           = string
    sas_type                   = string
    validity_period            = string
    tags                       = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.key_vault_managed_storage_account_sas_token_definitions : (
        length(v.name) <= 127
      )
    ])
    error_message = "[from keyvault.ValidateNestedItemName: invalid when len(value) > 127]"
  }
  validation {
    condition = alltrue([
      for k, v in var.key_vault_managed_storage_account_sas_token_definitions : (
        length(v.sas_template_uri) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.key_vault_managed_storage_account_sas_token_definitions : (
        contains(["service", "account"], v.sas_type)
      )
    ])
    error_message = "must be one of: service, account"
  }
  validation {
    condition = alltrue([
      for k, v in var.key_vault_managed_storage_account_sas_token_definitions : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

