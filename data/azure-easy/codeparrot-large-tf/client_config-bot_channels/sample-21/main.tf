terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# data block, azurem client config
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create bot channels registration resourceresource
resource "azurerm_bot_application_registration" "name_3" {
  name                = "bot_registration"
  resource_group_name = azurerm_resource_group.name_2.name
  location            = "westus2"
  sku                 = "Standard"
}

