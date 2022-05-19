terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure
provider "azurerm" {
  version = "=2.0.0"
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myResourceGroup"
  location = "eastus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "mycognitiveaccount"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "mybot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  microsoft_app_id    = "myappid"
  microsoft_app_password = "myapppassword"
  endpoint            = "https://mybot.azurewebsites.net/api/messages"
  tags                = {
    environment = "production"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_4" {
  name                = "mybot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_id              = azurerm_bot_channels_registration.name_3.id
  cognitive_models    = [
    {
      locale = "en-us"
      model  = "builtin/conversational"
    },
  ]
  speech_recognition_language = "en-US"
  speech_subscription_key     = data.azurerm_client_config.name_2.client_secret
  speech_region               = "westus"
  speech_endpoint             = "https://westus.stt.speech.microsoft.com/speech/recognition/conversation/cognitiveservices/v1"
  speech_context              = [
    {
      mode = "Interactive"
      phrases = [
        "hello",
        "goodbye",
      ]
    },
  ]
}

