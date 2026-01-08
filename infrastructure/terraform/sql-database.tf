resource "random_integer" "sql_suffix" {
  min = 10000
  max = 99999
}

resource "azurerm_mssql_server" "sql" {
  name                         = lower(replace("${var.prefix}-sql-${random_integer.sql_suffix.result}", "_", "-"))
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_login
  administrator_login_password = var.sql_admin_password
  minimum_tls_version          = "1.2"
  identity {
    type = "SystemAssigned"
  }
  tags = var.tags
}

resource "azurerm_mssql_database" "db" {
  name           = "${var.prefix}-db"
  server_id      = azurerm_mssql_server.sql.id
  sku_name       = "Basic"
  zone_redundant = false
  tags           = var.tags
}
