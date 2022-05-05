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
  location = "westus2"
}

# iothub with sku name S1 and capacity 1. Use resource group name and location
# azurerm_resource_group "rg" {
#   name     = "iothub-sku"
#   location = "West Europe"
# }

# Create storage account
resource "azurerm_storage_account" "name_1" {
  name                     = "storage${lower(var.storage_name)}"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = azurerm_resource_group.name_0.location
  account_tier             = var.storage_account_tier
  account_replication_type = "LRS"

  tags = {
    environment = var.environment
  }
}

