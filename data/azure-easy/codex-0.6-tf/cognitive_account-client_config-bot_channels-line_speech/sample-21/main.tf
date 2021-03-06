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
  name     = "myResourceGroup"
  location = "westus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "myCognitiveAccount"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "myBotChannelsRegistration"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "F0"
  microsoft_app_id    = "myAppId"
  microsoft_app_password = "myAppPassword"
  endpoint            = "https://myBot.azurewebsites.net/api/messages"
  developer_app_insights_key = "myAppInsightsKey"
  cognitive_models {
    dispatch_model_id = "myDispatchModelId"
    version           = "0.1"
  }
  cognitive_models {
    luis_app_id       = "myLuisAppId"
    version           = "0.1"
  }
  tags = {
    environment = "dev"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_4" {
  name                = "myBotChannelDirectLineSpeech"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_channels_registration_id = azurerm_bot_channels_registration.name_3.id
  cognitive_services_account_id = azurerm_cognitive_account.name_1.id
  cognitive_services_account_key = azurerm_cognitive_account.name_1.primary_access_key
  cognitive_services_account_region = azurerm_cognitive_account.name_1.location
  speech_subscription_key = data.azurerm_client_config.name_2.subscription_id
  speech_region = azurerm_cognitive_account.name_1.location
}

