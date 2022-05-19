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
  location = "westus"
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
  sku_name            = "F0"
  microsoft_app_id    = "my-bot-app-id"
  microsoft_app_password = "my-bot-app-password"
  endpoint            = "https://my-bot-endpoint.com/api/messages"
  developer_app_insights_key = "my-bot-app-insights-key"
  developer_app_insights_api_key = "my-bot-app-insights-api-key"
  developer_app_insights_application_id = "my-bot-app-insights-application-id"
  cognitive_models {
    cognitive_model_id = "my-cognitive-model-id"
    version = "my-cognitive-model-version"
    cognitive_services {
      cognitive_service_id = azurerm_cognitive_account.name_1.id
      region = azurerm_cognitive_account.name_1.location
      subscription_id = data.azurerm_client_config.name_2.subscription_id
    }
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_4" {
  name                = "my-bot-channel-direct-line-speech"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_id              = azurerm_bot_channels_registration.name_3.id
  speech_subscription_key = "my-speech-subscription-key"
  speech_region       = "westus"
}

