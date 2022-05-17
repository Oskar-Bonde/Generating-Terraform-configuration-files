terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# data block, azurem client config file
data "azurerm_client_config" "name_3" {}

# terraform block, azurerm client config file
resource "azurerm_client_config" "name_3" {
  name = "myTFClientConfig"
  resource_group_name = azurerm_resource_group.name_1.name
}

