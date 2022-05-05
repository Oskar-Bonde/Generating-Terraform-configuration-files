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

# make resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create cognitive account resourcevariable
resource "azurerm_resource_group_variable" "name_1" {
  name     = "test"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

