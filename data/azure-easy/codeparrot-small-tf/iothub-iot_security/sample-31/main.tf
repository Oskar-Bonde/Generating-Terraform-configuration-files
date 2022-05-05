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

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_dev"
  location = "westus2"
}

# make iothub resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_iothub"
  location = "westus2"
}

# iot security solution resource
# azurerm_resource_group "rg_iothub_dev" {
#   name                 = "myTFResourceGroup_iothub_dev"
#   location             = "westus2"
#   resource_group_name  = azurerm_resource_group.name_0.name
#   virtual_network_name = azurerm_virtual_network.name_2.name
# }

# create virtual network
resource "azurerm_virtual_network" "name_2" {
  name                = "myTFVNet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
}

