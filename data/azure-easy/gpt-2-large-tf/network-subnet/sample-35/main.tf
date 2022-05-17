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
  name     = "myTFResourceGroup-user"
  location = "westus2"
}

# a virtual network resource
resource "azurerm_virtual_network" "name_1" {
  name                = "myTFResourceGroup-network"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.1.0/24"]
}

# create subnet resource
resource "azurerm_subnet" "name_2" {
  name                 = "myTFResourceGroup-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_1.name
  address_prefix       = "10.0.0.0/24"
  address_prefix_count = 3
}

