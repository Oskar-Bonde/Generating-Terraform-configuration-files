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

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "myresources-rg-ssh"
  location = "westus2"
}

# data block, azurem client config
resource "azurerm_storage_account" "name_1" {
  name                = "mystorage-account"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
}

