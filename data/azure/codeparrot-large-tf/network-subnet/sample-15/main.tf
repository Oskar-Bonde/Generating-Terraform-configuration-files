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
  name     = "example-resources"
  location = "westus"
}

# a virtual network resource in address space 10.0.0.0/16. Use location and resource group name to get
# the IP address of the virtual network
resource "azurerm_virtual_network" "name_1" {
  name                = "vnet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = "${azurerm_resource_group.rg.name}"
}

# create subnet resource, with address prefix 10.0.1.0/24. Use virtual network name and the resource group name to get
# the IP address of the subnet
resource "azurerm_subnet" "name_2" {
  name                 = "subnet"
  resource_group_name  = "${azurerm_resource_group.rg.name}"
  virtual_network_name = "${azurerm_virtual_network.name_1.name}"
  address_prefix       = "10.0.1.0/24"
}

