terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure

provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGrouppolicy"
  location = "westus2"
}

# resource block, create automation account
resource "azurerm_virtual_network" "name_1" {
  name                = "myTFResourceGroup"
  address_space       = ["10.0
}

