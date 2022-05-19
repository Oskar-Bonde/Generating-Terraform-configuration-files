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
  name     = "${var.resource_group_name}"
  location = "${var.location}"
}

# a virtual network resource 
resource "azurerm_virtual_network" "name_1" {
  name                = "${var.vnet_name}"
  address_space       = ["${var.vnet_address_space}"]
  location            = "${azurerm_resource_group.name_0.location}"
  resource_group_name = "${azurerm_resource_group.name_0.name}"
}

# create subnet resource
resource "azurerm_subnet" "name_2" {
  name                 = "${var.subnet_name}"
  resource_group_name  = "${azurerm_resource_group.name_0.name}"
  virtual_network_name = "${azurerm_virtual_network.name_1.name}"
  address_prefix       = "${var.subnet_address_prefix}"
}

# resource block of public ip
resource "azurerm_public_ip" "name_3" {
  name                = "${var.public_ip_name}"
  location            = "${azurerm_resource_group.name_0.location}"
  resource_group_name = "${azurerm_resource_group.name_0.name}"
  allocation_method   = "Static"
}

# resource block with firewall
resource "azurerm_network_security_group" "name_4" {
  name                = "${var.nsg_name}"
  location            = "${azurerm_resource_group.name_0.location}"
  resource_group_name = "${azurerm_resource_group.name_0.name}"

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

