terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features block
provider "azurerm" {
  features {}
}

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "example"
  location = "westus2"
}

# create public ip resource, use static allocation method. Assign resource group name and location
resource "azurerm_public_ip" "name_1" {
  name                         = "publicIP"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.name_0.name
  allocation_method            = "Static"
  sku {
    name     = "Standard_Small"
    tier     = "Standard"
    capacity = 2
  }
}

# lb resource. In frontend ip configuration block, asssign name and public ip address id. Use resource group name and location
resource "azurerm_lb" "name_2" {
  name                = "lb"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name

  frontend_ip_configuration {
    name                          = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.name_1.id
  }
}

