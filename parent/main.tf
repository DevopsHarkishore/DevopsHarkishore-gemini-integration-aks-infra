module "resource_group" {
  source = "../child/azurerm_resource_group"
  rg     = var.rg
}

module "aks" {
  depends_on = [module.resource_group]
  source     = "../child/azurerm_kubernetes_cluster"
  aks        = var.aks
}

module "acr" {
  depends_on = [module.resource_group]
  source     = "../child/azurerm_container_registry"
  acr        = var.acr
}

module "pip" {
  depends_on = [module.resource_group]
  source     = "../child/azurerm_public_ip"
  pip        = var.pip
}

module "sqlserver" {
  depends_on = [module.resource_group]
  source     = "../child/azurerm_sql_server"
  sqlserver  = var.sqlserver
}

module "sqldb" {
  depends_on = [module.resource_group, module.sqlserver]
  source     = "../child/azurerm_sql_database"
  sqldb      = var.sqldb
}

module "stg" {
  depends_on = [module.resource_group]
  source     = "../child/azurerm_storage_account"
  stg        = var.stg
}