terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features block
provider "azurerm" {
  features {}
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "myresources"
  location = "westus2"
}

# a virtual network resource in address space 10.0.0.0/16. Use location and resource group name
resource "azurerm_network_interface" "name_1" {
  name                = "mynetwork"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_security_group_id = azurerm_network_security_group.default.id
}

# create subnet resource, with address prefix 10.0.1.0/24. Use virtual network name and the resource group name
resource "azurerm_subnet" "name_2" {
  name                 = "mysubnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_network_interface.name_1.name
  address_prefix       = "10.0.0.0/16"
}

