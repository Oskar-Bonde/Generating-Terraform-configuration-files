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
  name     = "example-resources"
  location = "West Europe"
}

# data block, azurem client config
data "azurerm_client_config" "name_1" {}

# data block, azurem subscription
data "azurerm_subscription" "name_2" {}

# data block, azurem tenant
data "azurerm_tenant" "name_3" {}

# data block, azurem virtual network
data "azurerm_virtual_network" "name_4" {
  name                = "example-vnet"
  resource_group_name = azurerm_resource_group.name_0.name
}

