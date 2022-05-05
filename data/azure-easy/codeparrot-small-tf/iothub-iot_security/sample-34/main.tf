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
# azurerm_resource_group.name_0 creates a resource group with public and private
# ip_configuration {
#   name = "iothub-rg-test"
#   location = "westus2"
# }

# create virtual network
resource "azurerm_virtual_network" "name_1" {
  name                = "myTFVNet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
  address_space       = ["10.0.1.0/24"]
}

# iot security solution resource
# azurerm_resource_group.name_0 creates a resource group with public and private
# ip_configuration {
#   name = "iothub-rg-test"
#   location = "westus2"
# }

# create virtual network
resource "azurerm_virtual_network" "name_2" {
  name                = "myTFVNet_2"
  address_space       = ["10.0.2.0/24"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
  address_space       = ["10.0.3.0/24"]
}

