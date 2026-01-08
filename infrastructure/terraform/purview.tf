resource "azurerm_purview_account" "purview" {
  name                         = "${var.prefix}-pvw"
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = var.location
  managed_resource_group_name  = var.managed_resource_group_name

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}
