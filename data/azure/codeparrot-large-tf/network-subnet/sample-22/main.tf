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

# a virtual network resource in address space 10.0.0.0/16. Use location and resource group name with a 
# 
# resource "azurerm_virtual_network" "vnet" {
#   name                = "vnet"
#   address_space       = ["10.0.0.0/16"]
#   location            = "westus2"
#   resource_group_name = azurerm_resource_group.name_0.name
# }

# a subnet resource in address space 10.0.1.0/24. Use location and resource group name with a 
# 
# resource "azurerm_subnet" "subnet" {
#   name                 = "subnet"
#   address_prefix       = "10.0.1.0/24"
#   resource_group_name  = azurerm_resource_group.name_0.name
#   virtual_network_name = azurerm_virtual_network.vnet.name
# }

# a security group for web servers
resource "azurerm_network_security_group" "name_1" {
  name                = "webservers"
  location            = "westus"
  resource_group_name = azurerm_resource_group.name_0.name
}

# create subnet resource, with address prefix 10.0.1.0/24. Use virtual network name and the resource group name with a 
# 
# resource "azurerm_subnet" "subnet" {
#   name                 = "subnet"
#   address_prefix       = "10.0.1.0/24"
#   resource_group_name  = azurerm_resource_group.name_0.name
#   virtual_network_name = azurerm_virtual_network.vnet.name
# }

# a security group for web servers
resource "azurerm_network_security_group" "name_2" {
  name                = "webservers_ssh"
  location            = "westus"
  resource_group_name = azurerm_resource_group.name_0.name
}

