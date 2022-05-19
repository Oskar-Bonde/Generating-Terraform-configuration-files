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
  name     = "rg-name"
  location = "westus"
}

# create public ip resource
resource "azurerm_public_ip" "name_1" {
  name                = "pip-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  allocation_method   = "Static"
  domain_name_label   = "domain-name-label"
}

# make a lb resource
resource "azurerm_lb" "name_2" {
  name                = "lb-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name

  frontend_ip_configuration {
    name                 = "frontend-ip-configuration"
    public_ip_address_id = azurerm_public_ip.name_1.id
  }
}

