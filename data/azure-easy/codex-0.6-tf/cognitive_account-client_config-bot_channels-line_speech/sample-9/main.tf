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
  location = "westus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "my-cog"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "my-bot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "F0"
  microsoft_app_id    = "my-app-id"
  microsoft_app_password = "my-app-password"
  endpoint            = "https://my-bot.azurewebsites.net/api/messages"
  developer_app_insights_key = "my-app-insights-key"
  developer_app_insights_api_key = "my-app-insights-api-key"
  cognitive_models {
    luis_app_id = azurerm_cognitive_account.name_1.id
    luis_authoring_key = data.azurerm_client_config.name_2.client_secret
    luis_authoring_region = azurerm_cognitive_account.name_1.location
    dispatch_app_id = azurerm_cognitive_account.name_1.id
    qna_knowledgebase_id = azurerm_cognitive_account.name_1.id
    qna_endpoint_key = data.azurerm_client_config.name_2.client_secret
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_4" {
  name                = "my-bot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_id              = azurerm_bot_channels_registration.name_3.id
  speech_subscription_key = "my-speech-subscription-key"
  speech_region       = "westus"
}

