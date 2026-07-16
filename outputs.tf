output "key_vault_managed_storage_account_sas_token_definitions_id" {
  description = "Map of id values across all key_vault_managed_storage_account_sas_token_definitions, keyed the same as var.key_vault_managed_storage_account_sas_token_definitions"
  value       = { for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "key_vault_managed_storage_account_sas_token_definitions_managed_storage_account_id" {
  description = "Map of managed_storage_account_id values across all key_vault_managed_storage_account_sas_token_definitions, keyed the same as var.key_vault_managed_storage_account_sas_token_definitions"
  value       = { for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : k => v.managed_storage_account_id if v.managed_storage_account_id != null && length(v.managed_storage_account_id) > 0 }
}
output "key_vault_managed_storage_account_sas_token_definitions_name" {
  description = "Map of name values across all key_vault_managed_storage_account_sas_token_definitions, keyed the same as var.key_vault_managed_storage_account_sas_token_definitions"
  value       = { for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "key_vault_managed_storage_account_sas_token_definitions_sas_template_uri" {
  description = "Map of sas_template_uri values across all key_vault_managed_storage_account_sas_token_definitions, keyed the same as var.key_vault_managed_storage_account_sas_token_definitions"
  value       = { for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : k => v.sas_template_uri if v.sas_template_uri != null && length(v.sas_template_uri) > 0 }
}
output "key_vault_managed_storage_account_sas_token_definitions_sas_type" {
  description = "Map of sas_type values across all key_vault_managed_storage_account_sas_token_definitions, keyed the same as var.key_vault_managed_storage_account_sas_token_definitions"
  value       = { for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : k => v.sas_type if v.sas_type != null && length(v.sas_type) > 0 }
}
output "key_vault_managed_storage_account_sas_token_definitions_secret_id" {
  description = "Map of secret_id values across all key_vault_managed_storage_account_sas_token_definitions, keyed the same as var.key_vault_managed_storage_account_sas_token_definitions"
  value       = { for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : k => v.secret_id if v.secret_id != null && length(v.secret_id) > 0 }
}
output "key_vault_managed_storage_account_sas_token_definitions_tags" {
  description = "Map of tags values across all key_vault_managed_storage_account_sas_token_definitions, keyed the same as var.key_vault_managed_storage_account_sas_token_definitions"
  value       = { for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "key_vault_managed_storage_account_sas_token_definitions_validity_period" {
  description = "Map of validity_period values across all key_vault_managed_storage_account_sas_token_definitions, keyed the same as var.key_vault_managed_storage_account_sas_token_definitions"
  value       = { for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : k => v.validity_period if v.validity_period != null && length(v.validity_period) > 0 }
}

