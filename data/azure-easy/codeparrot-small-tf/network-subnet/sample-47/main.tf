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

# create resource groupresource
resource "azurerm_resource_group_resource" "name_0" {
  name     = "rg${local.resource_group_prefix}${local.name_prefix}"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  sku = "Standard_LRS"
  location_type = "Standard"
}

# a virtual network resource
resource "azurerm_virtual_network" "name_1" {
  name                = "vnet${local.resource_group_prefix}"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

# create subnet resource
resource "azurerm_subnet" "name_2" {
  name                 = "subnet${local.resource_group_prefix}"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_1.name
  address_prefix       = "10.0.1.0/24"
}

