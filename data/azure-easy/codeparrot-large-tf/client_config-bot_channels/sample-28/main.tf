terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# data block, azurem client config file
data "azurerm_client_config" "name_3" {}

# terraform block, azurerm client config file
resource "azurerm_client_config" "name_3" {
  name                          = "myTFClientConfig"
  resource_group_name           = azurerm_resource_group.name_1.name
  location                      = "westus2"
  sku {
    tier                    = "Standard"
    capacity                = 2
    capacity_unit           = "GB"
    capacity_value           = "1"
    minimum_capacity          = 1
    name                     = "myTFClientConfig"
  }
}

# create bot channels registration resource
resource "azurerm_bot_channel_registration" "name_4" {
  name                = "myTFBotRegistration"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = "westus2"
  sku                 = "Standard"
  depends_on          = [azurerm_resource_group.name_1]
}

