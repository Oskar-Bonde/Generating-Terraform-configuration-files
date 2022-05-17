terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure

resource "azurerm_virtual_network" "name_0" {
  name                = "myTFResourceGroup"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.1.0/24"]
}

# create resource group
resource "azurerm_subnet" "name_1" {
  name                 = "myTFResourceGroup"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_0.name
  address_prefix       = "10.0.2.0/24"
  address_prefix_count = 3
}

# a virtual network resourceresource "azurerm_network_security_group" "rg" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_prefix       = "10.0.3.0/24"
  address_prefix_count = 3
}

# create subnet resource
resource "azurerm_subnet" "name_2" {
  name                 = "myTFResourceGroup"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_0.name
  address_prefix       = "10.0.4.0/24"
  address_prefix_count = 3
}

# resource block of public ip
resource "azurerm_public_ip" "name_3" {
  name                         = "myTFResourceGroup"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
  domain_name_label            = "myTFResourceGroup"
  domain_name_label_address = "public"
  domain_name_label_port   = "443"
  domain_name_label_address_allocation = "static"
  tags                         = ["${azurerm_public_ip.name_3.name}"]
}

