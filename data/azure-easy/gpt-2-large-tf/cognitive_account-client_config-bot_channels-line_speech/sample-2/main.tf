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
  name     = "myTFResourceGroup_policy"
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
  address_prefix       = "10.0.0.0/16"
  address_prefix_count = 3
  address_prefix_type = "INTERNAL"
}

# create bot channels registration resource
resource "azurerm_subnet" "name_3" {
  name                 = "myTFResourceGroup-vm_lb"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_1.name
  address_prefix       = "10.0.1.0/24"
  address_prefix_count = 3
  address_prefix_type = "INTERNAL"
}

# resource block called bot channel direct line speech
resource "azurerm_subnet" "name_4" {
  name                 = "myTFResourceGroup-vm_lb_lb"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_1.name
  address_prefix       = "10.0.2.0/24"
  address_prefix_count = 3
  address_prefix_type = "INTERNAL"
}

