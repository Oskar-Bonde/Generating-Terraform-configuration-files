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
  name     = "my-resource-group"
  location = "West US"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "my-cognitive-account"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "my-bot-channels-registration"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "sdk"
  sku_name            = "F0"
  microsoft_app_id    = "my-microsoft-app-id"
  microsoft_app_password = "my-microsoft-app-password"
  endpoint            = "https://my-bot-channels-registration.azurewebsites.net/api/messages"
  developer_app_insights_key = "my-developer-app-insights-key"
  developer_app_insights_api_key = "my-developer-app-insights-api-key"
  developer_app_insights_application_id = "my-developer-app-insights-application-id"
  tags = {
    environment = "Production"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_4" {
  name                = "my-bot-channel-direct-line-speech"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_name            = azurerm_bot_channels_registration.name_3.name
  bot_resource_group  = azurerm_bot_channels_registration.name_3.resource_group_name
  cognitive_models    = [
    {
      locale = "en-us"
      model_id = "builtin/conversational"
    },
  ]
  speech_subscription_key = data.azurerm_client_config.name_2.object_id
  speech_region           = "westus"
}

