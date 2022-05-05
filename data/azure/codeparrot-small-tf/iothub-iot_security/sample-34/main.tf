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
#   name     = "iothub"
#   location = "westus2"
# }

# create virtual network
resource "azurerm_virtual_network" "name_1" {
  name                = "myTFVNet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
  address_space_count = 1
}

# iot security solution, assign display name and name. Use iothub id and resrouce group name and location
# azurerm_virtual_network "vnet" {
#   name                = "iothub"
#   location            = "westus2"
#   resource_group_name = azurerm_resource_group.name_0.name
#   address_space_count = 1
# }

# create subnet
resource "azurerm_subnet" "name_2" {
  name                 = "myTFSubnet"
  resource_group_name  = azurerm_resource_group.name_0.name
  virtual_network_name = azurerm_virtual_network.name_1.name
  address_prefix       = "10.0.1.0/24"
}

