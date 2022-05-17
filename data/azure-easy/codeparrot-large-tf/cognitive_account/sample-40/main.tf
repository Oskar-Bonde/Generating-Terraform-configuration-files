terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# make resource group private
resource "azurerm_public_ip" "name_1" {
  name                         = "pip"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.name_0.name
  allocation_method            = "Static"
  sku                          = "Standard"
  domain_name_label            = "piptest"
  tags {
    environment = "test"
  }
}

# create cognitive account resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFRG"
  location = "westus2"
}

