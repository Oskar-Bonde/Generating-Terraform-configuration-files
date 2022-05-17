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
}

# make resource group
resource "azurerm_network_interface" "name_1" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource
}

# create cognitive account resource
}

