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
  name     = "myTFResourceGroup-user"
  location = "westus2"
}

# data block, azurem client config
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup-password"
  location = "westus2"
}

