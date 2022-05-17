terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure

resource "azurerm_public_ip" "name_0" {
  name                         = "myTFResourceGroup"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.name_2.name
  public_ip_address_allocation = "static"
}

# create resource group
resource "azurerm_network_interface" "name_1" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_2.name
  ip_configuration {
    name                          = "myTFResourceGroup"
    subnet_id                     = azurerm_subnet.rg.id
    private_ip_address_allocation = "dynamic"
    private_ip_address_id          = azurerm_public_ip.name_0.id
  }
}

# kubernetes cluster resource
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

