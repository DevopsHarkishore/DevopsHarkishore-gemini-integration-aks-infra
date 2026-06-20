rg = {
  "rg-aks" = {
    name     = "rg-aks"
    location = "central india"
    tags = {
      environment = "dev"
      project     = "aks-project"
    }
  }
}

aks = {
  "aks-cluster" = {
    name                = "aks-cluster"
    location            = "central india"
    resource_group_name = "rg-aks"
    dns_prefix          = "akscluster"

    node_pool_name = "default"
    node_count     = 2
    vm_size        = "Standard_D2_v3"
    type           = "SystemAssigned"
    tags = {
      environment = "dev"
      project     = "aks-project"
    }
  }
}

acr = {
  "acr-registry" = {
    name                = "acrdevproject4480"
    resource_group_name = "rg-aks"
    location            = "central india"
    sku                 = "Premium"
    admin_enabled       = false
    tags = {
      environment = "dev"
      project     = "aks-project"
    }
  }
}

pip = {
  "pip-aks" = {
    name                = "pip-aks"
    resource_group_name = "rg-aks"
    location            = "central india"
    allocation_method   = "Static"
    tags = {
      environment = "dev"
      project     = "aks-project"
    }
  }
}

sqlserver = {
  "sqlserver-aks" = {
    name                = "sqlserveraks4480"
    resource_group_name = "rg-aks"
    location            = "central india"
    version             = "12.0"
    minimum_tls_version = "1.2"
    tags = {
      environment = "dev"
      project     = "aks-project"
    }
    secret_username        = "sqlserver-username"
    secret_password        = "sqlserver-password"
    key_vault_name         = "testkv44805"
    kv_resource_group_name = "harkishore-keyvault"
  }
}

sqldb = {
  "sqldb-aks" = {
    name                = "sqldbaks"
    resource_group_name = "rg-aks"
    sql_server_name     = "sqlserveraks4480"
    collation           = "SQL_Latin1_General_CP1_CI_AS"
    license_type        = "LicenseIncluded"
    max_size_gb         = 5
    sku_name            = "S0"
    enclave_type        = "VBS"
    tags = {
      environment = "dev"
      project     = "aks-project"
    }
  }
}

stg = {
  "stg-aks" = {
    name                     = "storagaks250712"
    resource_group_name      = "rg-aks"
    location                 = "central india"
    account_tier             = "Standard"
    account_replication_type = "GRS"
    tags = {
      environment = "dev"
      project     = "aks-project"
    }
  }
}