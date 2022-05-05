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
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create cognitive account key
resource "azurerm_cognitive_account_key" "name_3" {
  name                = azurerm_cognitive_account.name_1.name
  resource_group_name = azurerm_resource_group.name_0.name
  key_name            = "key1"
  key_value           = data.azurerm_client_config.name_2.object_id
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "my-bot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "F0"
  kind                = "sdk"
  endpoint            = "https://my-bot.azurewebsites.net/api/messages"
  msi_endpoint        = "https://my-bot.azurewebsites.net/api/messages"
  msi_secret          = "secret"
  app_id              = "app-id"
  app_password        = "app-password"
  developer_app_insights_key = "app-insights-key"
  developer_app_insights_api_key = "app-insights-api-key"
  cognitive_models {
    dispatch_model_id = "dispatch-model-id"
    language_model_id = "language-model-id"
  }
  tags = {
    environment = "Production"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_5" {
  name                = "my-bot-channel-direct-line-speech"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_name            = azurerm_bot_channels_registration.name_4.name
  bot_resource_group  = azurerm_bot_channels_registration.name_4.resource_group_name
  cognitive_models {
    dispatch_model_id = "dispatch-model-id"
    language_model_id = "language-model-id"
  }
  cognitive_account_id = azurerm_cognitive_account.name_1.id
  cognitive_account_key = azurerm_cognitive_account_key.name_3.key_value
  tags = {
    environment = "Production"
  }
}

