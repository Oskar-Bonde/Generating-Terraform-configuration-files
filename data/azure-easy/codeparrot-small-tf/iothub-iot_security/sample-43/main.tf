terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm
provider "azurerm" {
  features {}
}

# create resource groupvariable
resource "azurerm_resource_group_variable" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
  value     = "test"
}

# make iothub resource
resource "azurerm_storage_account" "name_1" {
  name                     = "mytfstorageaccount"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# iot security solution resource
resource "azurerm_storage_share" "name_2" {
  name                 = "mytfssu"
  storage_account_name = azurerm_storage_account.name_1.name
  quota                = 1000
}

