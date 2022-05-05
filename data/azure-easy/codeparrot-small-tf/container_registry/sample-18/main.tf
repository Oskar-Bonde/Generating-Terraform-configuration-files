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
  name      = "myTFResourceGroupVariable"
  value     = "test"
  depends_on = [azurerm_resource_group.rg]
}

# create container registry resource
resource "azurerm_storage_account" "name_1" {
  name                = "mytfstorageaccount"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier        = "Standard"
}

