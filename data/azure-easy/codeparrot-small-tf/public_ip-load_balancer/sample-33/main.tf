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
resource "azurerm_resource_group_resource" "name_0" {
  name     = "myTFResourceGroupResource"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  sku_name = "standard"
}

# create public ip resource
resource "azurerm_public_ip" "name_1" {
  name                         = "myTFPublicIP"
  location                     = "westus2"
  resource_group_name_id          = azurerm_resource_group.rg.id
  public_ip_address_allocation = "static"
  domain_name_label            = "mytflb"
}

# make a lb resource group
resource "azurerm_lb" "name_2" {
  name                = "myTFLB"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "standard"
  frontend_ip_configuration {
    name                 = "mytflb"
    public_ip_address_id = azurerm_public_ip.name_1.id
  }
}

