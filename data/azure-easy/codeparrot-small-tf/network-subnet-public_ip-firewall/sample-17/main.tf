terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm
provider "azurerm" {
  features {}
}

# create resource groupresource
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_rg"
  location = "westus2"
  resource_group = azurerm_resource_group.rg.name
}

# a virtual network resource
resource "azurerm_virtual_network" "name_1" {
  name                = "myTFVNet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_space_count = 2
}

# create subnet resource
resource "azurerm_subnet" "name_2" {
  name                 = "myTFSubnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_1.name
  address_prefix       = "10.0.1.0/24"
}

# resource block of public ipresource
resource "azurerm_public_ip" "name_3" {
  name                         = "myTFPublicIP"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  allocation_method            = "Static"
  domain_name_label            = "mytfpublicip"
}

# resource block with firewall
resource "azurerm_lb" "name_4" {
  name                = "myTFLB"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  frontend_ip_configuration {
    name                 = "mytffrontendip"
    public_ip_address_id = azurerm_public_ip.name_3.id
  }
}

