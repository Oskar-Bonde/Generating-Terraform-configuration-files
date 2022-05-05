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
  location = "West US"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "cog-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "CognitiveServices"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create cognitive account key
resource "azurerm_cognitive_account_key" "name_3" {
  name                = azurerm_cognitive_account.name_1.name
  resource_group_name = azurerm_resource_group.name_0.name
  key_name            = "key1"
  key_type            = "Primary"
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "bot-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  microsoft_app_id    = "app-id"
  microsoft_app_password = "app-password"
  endpoint            = "https://bot-name.azurewebsites.net/api/messages"
  developer_app_insights_key = "app-insights-key"
  developer_app_insights_api_key = "app-insights-api-key"
  cognitive_models {
    language = "en-us"
    model_id = azurerm_cognitive_account.name_1.id
    subscription_key = azurerm_cognitive_account_key.name_3.key
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_5" {
  name                = "bot-channel-direct-line-speech-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_name            = azurerm_bot_channels_registration.name_4.name
  bot_resource_group  = azurerm_bot_channels_registration.name_4.resource_group_name
  service_provider_name = "Microsoft.CognitiveServices"
  service_provider_resource_name = azurerm_cognitive_account.name_1.name
  service_provider_resource_group = azurerm_cognitive_account.name_1.resource_group_name
  subscription_key    = azurerm_cognitive_account_key.name_3.key
  speech_subscription_key = azurerm_cognitive_account_key.name_3.key
  speech_region       = azurerm_cognitive_account.name_1.location
}

