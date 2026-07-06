output "key_vault_managed_storage_account_sas_token_definitions" {
  description = "All key_vault_managed_storage_account_sas_token_definition resources"
  value       = azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions
}
output "key_vault_managed_storage_account_sas_token_definitions_managed_storage_account_id" {
  description = "List of managed_storage_account_id values across all key_vault_managed_storage_account_sas_token_definitions"
  value       = [for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : v.managed_storage_account_id]
}
output "key_vault_managed_storage_account_sas_token_definitions_name" {
  description = "List of name values across all key_vault_managed_storage_account_sas_token_definitions"
  value       = [for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : v.name]
}
output "key_vault_managed_storage_account_sas_token_definitions_sas_template_uri" {
  description = "List of sas_template_uri values across all key_vault_managed_storage_account_sas_token_definitions"
  value       = [for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : v.sas_template_uri]
}
output "key_vault_managed_storage_account_sas_token_definitions_sas_type" {
  description = "List of sas_type values across all key_vault_managed_storage_account_sas_token_definitions"
  value       = [for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : v.sas_type]
}
output "key_vault_managed_storage_account_sas_token_definitions_secret_id" {
  description = "List of secret_id values across all key_vault_managed_storage_account_sas_token_definitions"
  value       = [for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : v.secret_id]
}
output "key_vault_managed_storage_account_sas_token_definitions_tags" {
  description = "List of tags values across all key_vault_managed_storage_account_sas_token_definitions"
  value       = [for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : v.tags]
}
output "key_vault_managed_storage_account_sas_token_definitions_validity_period" {
  description = "List of validity_period values across all key_vault_managed_storage_account_sas_token_definitions"
  value       = [for k, v in azurerm_key_vault_managed_storage_account_sas_token_definition.key_vault_managed_storage_account_sas_token_definitions : v.validity_period]
}

