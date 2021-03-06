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
  sku_name            = "F0"
  microsoft_app_id    = "12345678-1234-1234-1234-123456789012"
  microsoft_app_password = "my-bot-password"
  endpoint            = "https://my-bot-endpoint.com/api/messages"
  developer_app_insights_key = "12345678-1234-1234-1234-123456789012"
  developer_app_insights_api_key = "12345678-1234-1234-1234-123456789012"
  developer_app_insights_application_id = "12345678-1234-1234-1234-123456789012"
  cognitive_models {
    dispatch_model_id = "12345678-1234-1234-1234-123456789012"
    language_model_id = "12345678-1234-1234-1234-123456789012"
  }
  tags = {
    environment = "dev"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_4" {
  name                = "my-bot-channel-direct-line-speech"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_id              = azurerm_bot_channels_registration.name_3.id
  cognitive_models {
    dispatch_model_id = "12345678-1234-1234-1234-123456789012"
    language_model_id = "12345678-1234-1234-1234-123456789012"
  }
  speech_subscription_key = "12345678-1234-1234-1234-123456789012"
  speech_region = "westus"
  tags = {
    environment = "dev"
  }
}

