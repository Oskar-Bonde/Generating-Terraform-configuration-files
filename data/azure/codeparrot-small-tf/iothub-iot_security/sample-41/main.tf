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
  name     = "example-rg"
  location = "westus2"
}

# iothub with sku name S1 and capacity 1. Use resource group name and location
# azurerm_resource_group "rg" {
#   name     = "iothubwithsku"
#   location = "West Europe"
# }

# Create storage account
resource "azurerm_storage_account" "name_1" {
  name                     = "storageaccount${lower(var.storage_name)}"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = azurerm_resource_group.name_0.location
  account_tier             = var.storage_account_tier
  account_replication_type = "LRS"
}

# iot security solution, assign display name and name. Use iothub id and resrouce group name and location
# azurerm_storage_account "stor" {
#   name                     = "iothubidss${lower(var.storage_id)}"
#   resource_group_name      = azurerm_resource_group.name_0.name
#   location                 = azurerm_resource_group.name_0.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
# }

# Create storage account
resource "azurerm_storage_account" "name_2" {
  name                     = "storageaccount${lower(var.storage_name)}-1"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = azurerm_resource_group.name_0.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

