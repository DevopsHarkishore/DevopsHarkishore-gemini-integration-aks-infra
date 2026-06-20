terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.71.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "Brijendra_RG"
    storage_account_name = "brijendrastoragelab"
    container_name       = "brijendracontainerlab"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
}