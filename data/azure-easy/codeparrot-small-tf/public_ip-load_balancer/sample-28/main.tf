terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create public ip resource
resource "azurerm_public_ip" "name_2" {
  name                         = "myPublicIP"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
  domain_name_label            = "mytf"
}

# make a lb resource
resource "azurerm_lb" "name_3" {
  name                = "myTFLB"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  frontend_ip_configuration {
    name                 = "myPublicIP"
    public_ip_address_id = azurerm_public_ip.name_2.id
  }
}

