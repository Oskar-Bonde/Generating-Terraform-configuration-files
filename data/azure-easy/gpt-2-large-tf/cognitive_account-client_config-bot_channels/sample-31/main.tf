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
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create cognitive account resource
resource "azurerm_virtual_network" "name_1" {
  name                = "myTFResourceGroup-vm"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.1.0/24"]
}

# data block, azurem client config
resource "azurerm_subnet" "name_2" {
  name                 = "myTFResourceGroup-vm"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_1.name
  address_prefix       = "10.0.0.0/24"
  address_prefix_
}

# create bot channels registration resource

}

