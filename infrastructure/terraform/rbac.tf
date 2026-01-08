# Assign Reader role at Resource Group scope to provided principals (optional)
resource "azurerm_role_assignment" "rg_reader" {
  for_each           = toset(var.rbac_principal_ids)
  scope              = azurerm_resource_group.rg.id
  role_definition_name = "Reader"
  principal_id       = each.value
}
