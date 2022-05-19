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
  name     = "my-resource-group"
  location = "westus"
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
  address_prefix       = "10.0.1.0/24"
}

# resource block of public ip
resource "azurerm_public_ip" "name_3" {
  name                = "my-pip"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  allocation_method   = "Static"
}

# resource block with firewall
resource "azurerm_firewall" "name_4" {
  name                = "my-fw"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name

  ip_configuration {
    name                          = "my-fw-ip-config"
    subnet_id                     = azurerm_subnet.name_2.id
    public_ip_address_id          = azurerm_public_ip.name_3.id
  }
}

