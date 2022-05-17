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
  name     = "myTFResourceGrouppolicy"
  location = "westus2"
}

# data block, azurem client config
resource "azurerm_virtual_network" "name_1" {
  name                = "myTFResourceGroup-vm"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.1.0/24"]
}

# create bot channels registration resource
resource "azurerm_network_interface" "name_2" {
  name                = "myTFResourceGroup-vm-${count.index}"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_security_group_id = azurerm_network_security_group.vm.id
}

