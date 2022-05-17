terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features block
provider "azurerm" {
  features {}
}

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "example"
  location = "westus"
}

# iothub with sku name S1 and capacity 1. Use resource group name and location to create storage accounts
resource "azurerm_storage_account" "name_1" {
  name                     = "sa"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "westus"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

