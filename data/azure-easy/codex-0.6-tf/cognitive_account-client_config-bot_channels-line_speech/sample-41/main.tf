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
  location = "westus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "cog-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "S0"
  kind                = "TextAnalytics"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "bot-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  microsoft_app_id    = data.azurerm_client_config.name_2.client_id
  microsoft_app_password = data.azurerm_client_config.name_2.client_secret
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_4" {
  name                = "bot-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_name            = azurerm_bot_channels_registration.name_3.name
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
      model_id = "builtin.datetimeV2.datetime"
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
      model_id = "builtin.datetimeV2.datetimerange"
    },
    {
      locale = "en-us"
      model_id = "builtin.currency"
    },
    {
      locale = "en-us"
      model_id = "builtin.ordinal"
    },
    {
      locale = "en-us"
      model_id = "builtin.percentage"
    },
    {
      locale = "en-us"
      model_id = "builtin.age"
    },
    {
      locale = "en-us"
      model_id = "builtin.dimension"
    },
    {
      locale = "en-us"
      model_id = "builtin.temperature"
    },
    {
      locale = "en-us"
      model_id = "builtin.volume"
    },
    {
      locale = "en-us"
      model_id = "builtin.weight"
    },
    {
      locale = "en-us"
      model_id = "builtin.speed"
    },
    {
      locale = "en-us"
      model_id = "builtin.email"
    },
    {
      locale = "en-us"
      model_id = "builtin.url"
    },
    {
      locale = "en-us"
      model_id = "builtin.phoneNumber"
    },
    {
      locale = "en-us"
      model_id = "builtin.geographyV2.city"
    },
    {
      locale = "en-us"
      model_id = "builtin.geographyV2.continent"
    },
    {
      locale = "en-us"
      model_id = "builtin.geographyV2.country"
    },
    {
      locale = "en-us"
      model_id = "builtin.geographyV2.state"
    },
    {
      locale = "en-us"
      model_id = "builtin.geographyV2.province"
    },
    {
      locale = "en-us"
      model_id = "builtin.geographyV2.county"
    },
    {
      locale = "en-us"
      model_id = "builtin.geographyV2.zipCode"
    },
    {
      locale = "en-us"
      model_id = "builtin.geographyV2.postalCode"
    },
    {
      locale = "en-us"
      model_id = "builtin.geographyV2.address"
    },
    {
      locale = "en-us"
      model_id = "builtin.geographyV2.landmark"
    },
    {
      locale = "en-us"
      model_id = "builtin.geographyV2.poi"
    },
    {
      locale = "en-us"
     
}

