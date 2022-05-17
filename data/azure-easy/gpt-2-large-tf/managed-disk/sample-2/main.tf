terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure provider

provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_policy"
  location = "westus2"
}

# make managed disk resource
resource "azurerm_storage_account" "name_1" {
  name                = "myTFResourceGroup_storage_account"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
}

