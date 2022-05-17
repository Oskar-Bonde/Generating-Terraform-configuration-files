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

# iothub with sku name S1 and capacity 1. Use resource group name and location
resource "azurerm_storage_account" "name_1" {
  name                     = "stor"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "westus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# iot security solution, assign display name and name. Use iothub id and resrouce group name and location
resource "azurerm_storage_share" "name_2" {
  name                 = "iot"
  storage_account_name = azurerm_storage_account.name_1.name
  quota                = 5
  depends_on            = [azurerm_resource_group.name_0]
}

