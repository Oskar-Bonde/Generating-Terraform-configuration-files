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
  name     = "test-rg"
  location = "West US"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "test-cog"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "test-bot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  microsoft_app_id    = "test-app-id"
  microsoft_app_password = "test-app-password"
  endpoint            = "https://test-bot.azurewebsites.net/api/messages"
  tags                = {
    environment = "test"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_4" {
  name                = "test-bot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_name            = azurerm_bot_channels_registration.name_3.name
  bot_resource_group  = azurerm_bot_channels_registration.name_3.resource_group_name
  cognitive_models    = [
    {
      locale = "en-us"
      model  = "builtin/conversational"
    },
  ]
  speech_recognition_language = "en-US"
  speech_subscription_key     = data.azurerm_client_config.name_2.client_secret
  speech_region               = "westus"
  tags                        = {
    environment = "test"
  }
}

