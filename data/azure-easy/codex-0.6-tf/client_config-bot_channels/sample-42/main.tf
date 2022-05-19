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

# data block, azurem client config
data "azurerm_client_config" "name_1" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_2" {
  name                = "bot-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  microsoft_app_id    = "app-id"
  microsoft_app_password = "app-password"
}

