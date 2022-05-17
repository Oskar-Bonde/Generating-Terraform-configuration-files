terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_3" {
  name     = "myTFRG"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_3" {
  name     = "myTFRG"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# resource id for azurerm resource group
resource "azurerm_resource_group" "name_3" {
  name     = "myTFRG"
  location = "westus2"
}

