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
  location = "westus"
}

# create public ip resource, use static allocation method. Assign resource group name and locationresource
resource "azurerm_public_ip" "name_1" {
  name                         = "PublicIPForLB"
  location                     = "West US"
  resource_group_name          = azurerm_resource_group.rg.name
  allocation_method            = "Static"
}

# lb resource. In frontend ip configuration block, asssign name and public ip address id. Use resource group name and location
# lb resource. Use static allocation method to assign public ip address id.
resource "azurerm_lb" "name_2" {
  name                = "PublicIPForLB"
  location            = "West US"
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "Standard"
  allocation_method   = "Static"
}

