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
  name     = "myTFResourceGroup2"
  location = "westus2"
}

# a virtual network resource
resource "azurerm_virtual_network" "name_1" {
  name                = "myTFVNet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

# create subnet resource
resource "azurerm_subnet" "name_2" {
  name                 = "myTFSubnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_1.name
  address_prefix       = "10.0.1.0/24"
}

# resource block of public ipvariable
resource "azurerm_public_ip_address" "name_3" {
  name                         = "myPublicIP"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
}

# resource block with firewall
resource "azurerm_network_interface" "name_4" {
  name                = "nic"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_security_group_id = azurerm_network_security_group.nsg.id
}

