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
