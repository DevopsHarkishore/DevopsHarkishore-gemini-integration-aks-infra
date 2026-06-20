variable "rg" {
  description = "The name of the resource group."
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))
}

variable "aks" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    dns_prefix          = string
    node_pool_name      = string
    node_count          = number
    vm_size             = string
    type                = string
    tags                = map(string)
  }))
}

variable "acr" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    sku                 = string
    admin_enabled       = bool
    tags                = map(string)
  }))
}

variable "pip" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
    tags                = map(string)
  }))
}

variable "sqlserver" {
  type = map(object({
    name                   = string
    resource_group_name    = string
    location               = string
    version                = string
    minimum_tls_version    = string
    tags                   = map(string)
    secret_username        = string
    secret_password        = string
    key_vault_name         = string
    kv_resource_group_name = string
  }))
}

variable "sqldb" {
  description = "The name of the SQL Database."
  type = map(object({
    name                = string
    sql_server_name     = string
    resource_group_name = string
    collation           = string
    license_type        = string
    max_size_gb         = number
    sku_name            = string
    enclave_type        = string
    tags                = map(string)
  }))

}
variable "stg" {
  description = "Storage Account Name"
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
    tags                     = map(string)
  }))

}
