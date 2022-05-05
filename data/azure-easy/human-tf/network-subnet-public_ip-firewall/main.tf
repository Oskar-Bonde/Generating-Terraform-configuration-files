# Terraform block with azure provider
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
  name     = "example-resources"
  location = "West Europe"
}

# a virtual network resource 
resource "azurerm_virtual_network" "name_1" {
  name                = "testvnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
}

# create subnet resource
resource "azurerm_subnet" "name_2" {
  name                 = "AzureFirewallSubnet"
  resource_group_name  = azurerm_resource_group.name_0.name
  virtual_network_name = azurerm_virtual_network.name_1.name
  address_prefixes     = ["10.0.1.0/24"]
}

# resource block of public ip
resource "azurerm_public_ip" "name_3" {
  name                = "testpip"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

# resource block with firewall
resource "azurerm_firewall" "name_4" {
  name                = "testfirewall"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = azurerm_subnet.name_2.id
    public_ip_address_id = azurerm_public_ip.name_3.id
  }
  sku_tier = "Standard"
  sku_name = "AZFW_Hub"
}