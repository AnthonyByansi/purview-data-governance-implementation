output "resource_group_id" {
  description = "Resource Group ID"
  value       = azurerm_resource_group.rg.id
}

output "purview_account_name" {
  description = "Purview account name"
  value       = try(azurerm_purview_account.purview.name, null)
}
