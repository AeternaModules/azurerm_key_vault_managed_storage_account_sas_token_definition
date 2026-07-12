output "key_vault_managed_storage_account_sas_token_definitions_id" {
  description = "Map of id values across all key_vault_managed_storage_account_sas_token_definitions, keyed the same as var.key_vault_managed_storage_account_sas_token_definitions"
  value       = { for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : k => v.id }
}
output "key_vault_managed_storage_account_sas_token_definitions_managed_storage_account_id" {
  description = "Map of managed_storage_account_id values across all key_vault_managed_storage_account_sas_token_definitions, keyed the same as var.key_vault_managed_storage_account_sas_token_definitions"
  value       = { for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : k => v.managed_storage_account_id }
}
output "key_vault_managed_storage_account_sas_token_definitions_name" {
  description = "Map of name values across all key_vault_managed_storage_account_sas_token_definitions, keyed the same as var.key_vault_managed_storage_account_sas_token_definitions"
  value       = { for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : k => v.name }
}
output "key_vault_managed_storage_account_sas_token_definitions_sas_template_uri" {
  description = "Map of sas_template_uri values across all key_vault_managed_storage_account_sas_token_definitions, keyed the same as var.key_vault_managed_storage_account_sas_token_definitions"
  value       = { for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : k => v.sas_template_uri }
}
output "key_vault_managed_storage_account_sas_token_definitions_sas_type" {
  description = "Map of sas_type values across all key_vault_managed_storage_account_sas_token_definitions, keyed the same as var.key_vault_managed_storage_account_sas_token_definitions"
  value       = { for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : k => v.sas_type }
}
output "key_vault_managed_storage_account_sas_token_definitions_secret_id" {
  description = "Map of secret_id values across all key_vault_managed_storage_account_sas_token_definitions, keyed the same as var.key_vault_managed_storage_account_sas_token_definitions"
  value       = { for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : k => v.secret_id }
}
output "key_vault_managed_storage_account_sas_token_definitions_tags" {
  description = "Map of tags values across all key_vault_managed_storage_account_sas_token_definitions, keyed the same as var.key_vault_managed_storage_account_sas_token_definitions"
  value       = { for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : k => v.tags }
}
output "key_vault_managed_storage_account_sas_token_definitions_validity_period" {
  description = "Map of validity_period values across all key_vault_managed_storage_account_sas_token_definitions, keyed the same as var.key_vault_managed_storage_account_sas_token_definitions"
  value       = { for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : k => v.validity_period }
}

