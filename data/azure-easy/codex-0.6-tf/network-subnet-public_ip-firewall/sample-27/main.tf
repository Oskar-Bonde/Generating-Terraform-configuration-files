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
  name     = "my-rg"
  location = "West US"
}

# a virtual network resource 
resource "azurerm_virtual_network" "name_1" {
  name                = "my-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
}

# create subnet resource
resource "azurerm_subnet" "name_2" {
  name                 = "my-subnet"
  resource_group_name  = azurerm_resource_group.name_0.name
  virtual_network_name = azurerm_virtual_network.name_1.name
  address_prefix       = "10.0.2.0/24"
}

# resource block of public ip
resource "azurerm_public_ip" "name_3" {
  name                = "my-pip"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  allocation_method   = "Dynamic"
}

# resource block with firewall
resource "azurerm_network_security_group" "name_4" {
  name                = "my-nsg"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name

  security_rule {
    name                       = "SSH"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

