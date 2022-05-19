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
  sku                 = "F0"
  kind                = "sdk"
  endpoint            = "https://mybot.azurewebsites.net/api/messages"
  microsoft_app_id    = "myAppId"
  microsoft_app_password = "myAppPassword"
  tags                = {
    environment = "production"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_4" {
  name                = "myBotChannelDirectLineSpeech"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_name            = azurerm_bot_channels_registration.name_3.name
  bot_resource_group  = azurerm_bot_channels_registration.name_3.resource_group_name
  cognitive_models    = [
    {
      locale = "en-us"
      model_id = "builtin.number"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.date"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.time"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.duration"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.set"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.datetime"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.datetimerange"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.daterange"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.timerange"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.durations"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.datetime-range"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.datetime-range"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.datetime-range"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.datetime-range"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.datetime-range"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.datetime-range"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.datetime-range"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.datetime-range"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.datetime-range"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.datetime-range"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.datetime-range"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.datetime-range"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.datetime-range"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.datetime-range"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.datetime-range"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.datetime-range"
    },
    {
      locale = "en-us"

}

