resource "azurerm_mssql_server" "sqlserver" {
  for_each                     = var.sqlserver
  name                         = each.value.name
  resource_group_name          = each.value.resource_group_name
  location                     = each.value.location
  version                      = each.value.version
  administrator_login          = data.azurerm_key_vault_secret.sqlserver_admin_login[each.key].value
  administrator_login_password = data.azurerm_key_vault_secret.sqlserver_admin_password[each.key].value
  minimum_tls_version          = each.value.minimum_tls_version
  tags                         = each.value.tags
}

data "azurerm_key_vault_secret" "sqlserver_admin_login" {
  for_each     = var.sqlserver
  name         = each.value.secret_username
  key_vault_id = data.azurerm_key_vault.sqlserver_key_vault[each.key].id
}

data "azurerm_key_vault_secret" "sqlserver_admin_password" {
  for_each     = var.sqlserver
  name         = each.value.secret_password
  key_vault_id = data.azurerm_key_vault.sqlserver_key_vault[each.key].id
}

data "azurerm_key_vault" "sqlserver_key_vault" {
  for_each            = var.sqlserver
  name                = each.value.key_vault_name
  resource_group_name = each.value.kv_resource_group_name
}
