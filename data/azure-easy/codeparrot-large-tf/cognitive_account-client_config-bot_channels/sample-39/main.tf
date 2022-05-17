terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_4" {
  name     = "myTFRG"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_4" {
  name     = "myTFRG"
  location = "westus2"
}

# create cognitive account resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFCOG"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_client_config" "name_3" {}

# create a resource group
resource "azurerm_resource_group" "name_4" {
  name     = "myTFRG"
  location = "westus2"
}

# create bot channels registration resource
resource "azurerm_bot_application_registration" "name_5" {
  name                = "myTFRG"
  resource_group_name = azurerm_resource_group.name_4.name
  location            = "westus2"
  sku                 = "Standard"
  tags                = {
    environment = "Development"
  }
}

