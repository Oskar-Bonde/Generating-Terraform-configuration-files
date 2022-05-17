terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# a virtual network resource
resource "azurerm_virtual_network" "name_2" {
  name                = "myTFVNet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_1.name
}

# create subnet resource
resource "azurerm_subnet" "name_3" {
  name                 = "myTFSubnet"
  resource_group_name  = azurerm_resource_group.name_1.name
  virtual_network_name = azurerm_virtual_network.name_2.name
  address_prefix       = "10.0.1.0/24"
}

# resource block of public ip
resource "azurerm_public_ip" "name_4" {
  name                         = "pip"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.name_1.name
  allocation_method            = "Static"
  sku                          = "Standard"
  domain_name_label            = "piptestvnet"
  tags {
    environment = "test"
  }
}

# resource block with firewall rules
resource "azurerm_network_security_group" "name_5" {
  name                = "nsg"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_1.name
  tags {
    environment = "test"
  }
}

