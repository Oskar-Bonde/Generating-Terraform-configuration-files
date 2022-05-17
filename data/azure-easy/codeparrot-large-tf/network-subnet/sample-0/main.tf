terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create resource group with storage account
resource "azurerm_resource_group" "name_1" {
  name     = "myTFStorageGroup"
  location = "westus2"
}

# a virtual network resource
resource "azurerm_virtual_network" "name_2" {
  name                = "myTFVNet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
}

# create subnet resource
resource "azurerm_subnet" "name_3" {
  name                 = "myTFSubnet"
  resource_group_name  = azurerm_resource_group.name_0.name
  virtual_network_name = azurerm_virtual_network.name_2.name
  address_prefix       = "10.0.0.0/24"
}

