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
  name     = "myTFResourceGroup"
  location = "westus2"
}

# a virtual network resourceresource block
resource "azurerm_virtual_network" "name_1" {
  name                = "myTFVNet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_space_count = 2
}

# create subnet resource
resource "azurerm_subnet" "name_2" {
  name                 = "myTFSubnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_1.name
  address_prefix       = "10.0.1.0/24"
}

# resource block of public ip
resource "azurerm_public_ip" "name_3" {
  name                         = "myTFPublicIP"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  allocation_method            = "Static"
  domain_name_label            = "mytfpublicip"
}

