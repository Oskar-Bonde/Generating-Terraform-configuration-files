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
  name     = "rg-test"
  location = "eastus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_3" {
  name                = "cog-test"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# data block, azurem cognitive account
data "azurerm_cognitive_account" "name_3" {
  name                = azurerm_cognitive_account.name_1.name
  resource_group_name = azurerm_resource_group.name_0.name
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "bot-test"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  microsoft_app_id    = data.azurerm_client_config.name_2.object_id
  cognitive_models {
    cognitive_model_id = data.azurerm_cognitive_account.name_3.id
    cognitive_model_name = data.azurerm_cognitive_account.name_3.name
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_directline_speech" "name_5" {
  name                = "bot-test"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_name            = azurerm_bot_channels_registration.name_4.name
  app_id              = azurerm_bot_channels_registration.name_4.microsoft_app_id
  app_password        = azurerm_bot_channels_registration.name_4.microsoft_app_password
  endpoint            = azurerm_bot_channels_registration.name_4.endpoint
  speech_subscription_key = azurerm_bot_channels_registration.name_4.speech_subscription_key
  speech_region       = azurerm_bot_channels_registration.name_4.speech_region
}

