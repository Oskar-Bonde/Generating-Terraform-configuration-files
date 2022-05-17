terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure provider

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
}

# make managed disk resource group
resource "azurerm_public_ip" "name_2" {
  name                         = "myTFResourceGroup"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
  domain_name_label            = "myTFResourceGroup"
}

