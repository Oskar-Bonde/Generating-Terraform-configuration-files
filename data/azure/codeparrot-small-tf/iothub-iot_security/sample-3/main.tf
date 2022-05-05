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

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "example"
  location = "westus2"
}

# iothub with sku name S1 and capacity 1. Use resource group name and location
# azurerm_resource_group "rg" {
#   name     = "iothubwithsku"
#   location = "westus2"
# }

# create virtual network
resource "azurerm_virtual_network" "name_1" {
  name                = "myTFVNet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
  address_space_count  = 1
}

# iot security solution, assign display name and name. Use iothub id and resrouce group name and location
# azurerm_virtual_network "vnet" {
#   name                = "iothubid"
#   location            = "westus2"
#   resource_group_name = azurerm_resource_group.name_0.name
#   address_space_count  = 1
# }

# create virtual network
resource "azurerm_virtual_network" "name_2" {
  name                = "myTFVNet2"
  address_space       = ["10.0.1.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
  address_space_count  = 1
}

