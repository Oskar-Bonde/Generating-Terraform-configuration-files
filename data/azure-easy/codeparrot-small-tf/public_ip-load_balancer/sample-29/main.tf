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

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create public ip resource
resource "azurerm_public_ip" "name_1" {
  name                         = "myPublicIP"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
  domain_name_label            = "mytflb"
}

# make a lb resource
resource "azurerm_lb" "name_2" {
  name                = "myLB"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  frontend_ip_configuration {
    name                 = "myfrontendIPConfiguration"
    public_ip_address_id = azurerm_public_ip.name_1.id
  }
}

