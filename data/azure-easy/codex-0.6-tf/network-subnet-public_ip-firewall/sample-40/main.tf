terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure
provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myResourceGroup"
  location = "eastus"
}

# a virtual network resource 
resource "azurerm_virtual_network" "name_1" {
  name                = "myVnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
}

# create subnet resource
resource "azurerm_subnet" "name_2" {
  name                 = "mySubnet"
  resource_group_name  = azurerm_resource_group.name_0.name
  virtual_network_name = azurerm_virtual_network.name_1.name
  address_prefix       = "10.0.2.0/24"
}

# resource block of public ip
resource "azurerm_public_ip" "name_3" {
  name                = "myPublicIP"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  allocation_method   = "Dynamic"
}

# resource block with firewall
resource "azurerm_firewall" "name_4" {
  name                = "myFirewall"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name

  ip_configuration {
    name                          = "myFirewallIPConfig"
    subnet_id                     = azurerm_subnet.name_2.id
    public_ip_address_id          = azurerm_public_ip.name_3.id
  }
}

