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
