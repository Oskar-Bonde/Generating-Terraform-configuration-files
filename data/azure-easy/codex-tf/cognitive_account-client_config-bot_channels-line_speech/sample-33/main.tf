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
  location = "eastus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "my-cog-acc"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "F0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create cognitive account key
resource "azurerm_cognitive_account_key" "name_3" {
  name                = azurerm_cognitive_account.name_1.name
  resource_group_name = azurerm_resource_group.name_0.name
  key_name            = "key1"
  key_vault_uri       = data.azurerm_client_config.name_2.key_vault_endpoint
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "my-bot-reg"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  endpoint            = "https://my-bot-reg.azurewebsites.net/api/messages"
  microsoft_app_id    = "12345678-1234-1234-1234-123456789012"
  microsoft_app_password = "my-bot-reg-password"
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_5" {
  name                = "my-bot-channel-direct-line-speech"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_channels_registration_id = azurerm_bot_channels_registration.name_4.id
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
      model_id = "builtin.datetimeV2.timerange"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.daterange"
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
      model_id = "builtin.datetimeV2.timerange"
    },
   
}

