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
  name     = "my-rg"
  location = "West US"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "my-cog-account"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "S0"
  kind                = "TextAnalytics"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "my-bot-registration"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "sdk"
  sku_name            = "F0"
  endpoint            = "https://my-bot-endpoint.com/api/messages"
  microsoft_app_id    = "my-app-id"
  microsoft_app_password = "my-app-password"
  tags                = {
    environment = "dev"
  }
}
