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

# make iothub resourcevariable accessible
# azurerm_resource_group.name_0.name
# azurerm_resource_group.name_0.location
# azurerm_resource_group.name_0.resource_group_name
# azurerm_resource_group.name_0.location

# create virtual network
resource "azurerm_virtual_network" "name_1" {
  name                = "myTFVNet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
  address_space       = ["10.0.1.0/24"]
}

# iot security solution resource
# azurerm_resource_group.name_0.name
# azurerm_resource_group.name_0.location
# azurerm_resource_group.name_0.resource_group_name

# create virtual network security group
resource "azurerm_network_security_group" "name_2" {
  name                = "nsg-test"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
  network_security_group_name = "nsg-test"
}

