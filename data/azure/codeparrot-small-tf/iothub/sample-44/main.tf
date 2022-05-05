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
  name     = "myTFResourceGroup"
  location = "westus2"
}

# iothub with sku name S1 and capacity 1. Use resource group name and location West US
# resource "azurerm_resource_group" "name_0" {
#   name     = "iothubwithsku"
#   location = "westus2"
# }

# create storage account
resource "azurerm_storage_account" "name_1" {
  name                     = "mytfstorageaccount"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

