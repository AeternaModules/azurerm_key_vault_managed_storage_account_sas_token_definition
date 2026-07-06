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
  # --- Unconfirmed validation candidates, derived from azurerm_key_vault_managed_storage_account_sas_token_definition's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from keyvault.ValidateNestedItemName] !ok
  # path: name
  #   condition: length(value) <= 127
  #   message:   [from keyvault.ValidateNestedItemName: invalid when len(value) > 127]
  #   source:    [from keyvault.ValidateNestedItemName: invalid when len(value) > 127]
  # path: name
  #   source:    [from keyvault.ValidateNestedItemName] !regexp.MustCompile(`^[0-9a-zA-Z-]+$`).MatchString(v.(string))
  # path: managed_storage_account_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: managed_storage_account_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
  # path: validity_period
  #   source:    [from validate.ISO8601Duration] !ok
  # path: validity_period
  #   source:    [from validate.ISO8601Duration] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

