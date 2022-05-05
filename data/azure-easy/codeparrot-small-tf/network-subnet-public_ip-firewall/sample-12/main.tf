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

# create resource groupvariable
resource "azurerm_resource_group_variable" "name_0" {
  name      = "myTFResourceGroupVariable"
  location = "westus2"
  value     = "test"
}

# a virtual network resource
resource "azurerm_virtual_network" "name_1" {
  name                = "myTFVNet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.1.0/24"]
}

# create subnet resourceresource group
resource "azurerm_subnet" "name_2" {
  name                 = "myTFSubnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_1.name
  address_prefix       = "10.0.2.0/24"
}

# resource block of public ip
resource "azurerm_public_ip" "name_3" {
  name                         = "myTFPublicIP"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  allocation_method            = "Static"
  domain_name_label            = "mytfpublic"
}

# resource block with firewall
resource "azurerm_firewall" "name_4" {
  name                = "myTFFirewall"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  depends_on          = [azurerm_public_ip.name_3]

  frontend_ip_configuration {
    name                          = "mytffrontendipconfig"
    public_ip_address_id          = azurerm_public_ip.name_3.id
    private_ip_address_allocation = "dynamic"
  }
}

