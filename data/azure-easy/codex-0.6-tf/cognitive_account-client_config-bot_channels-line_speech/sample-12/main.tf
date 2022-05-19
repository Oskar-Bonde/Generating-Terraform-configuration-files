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
  endpoint            = "https://bot-name.azurewebsites.net/api/messages"
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
      id   = "builtin.number"
      name = "builtin.number"
    },
    {
      id   = "builtin.ordinal"
      name = "builtin.ordinal"
    },
    {
      id   = "builtin.percentage"
      name = "builtin.percentage"
    },
    {
      id   = "builtin.currency"
      name = "builtin.currency"
    },
    {
      id   = "builtin.datetimeV2.date"
      name = "builtin.datetimeV2.date"
    },
    {
      id   = "builtin.datetimeV2.time"
      name = "builtin.datetimeV2.time"
    },
    {
      id   = "builtin.datetimeV2.datetime"
      name = "builtin.datetimeV2.datetime"
    },
    {
      id   = "builtin.datetimeV2.daterange"
      name = "builtin.datetimeV2.daterange"
    },
    {
      id   = "builtin.datetimeV2.timerange"
      name = "builtin.datetimeV2.timerange"
    },
    {
      id   = "builtin.datetimeV2.datetimerange"
      name = "builtin.datetimeV2.datetimerange"
    },
    {
      id   = "builtin.datetimeV2.duration"
      name = "builtin.datetimeV2.duration"
    },
    {
      id   = "builtin.datetimeV2.set"
      name = "builtin.datetimeV2.set"
    },
    {
      id   = "builtin.geographyV2.city"
      name = "builtin.geographyV2.city"
    },
    {
      id   = "builtin.geographyV2.continent"
      name = "builtin.geographyV2.continent"
    },
    {
      id   = "builtin.geographyV2.country"
      name = "builtin.geographyV2.country"
    },
    {
      id   = "builtin.geographyV2.state"
      name = "builtin.geographyV2.state"
    },
    {
      id   = "builtin.geographyV2.province"
      name = "builtin.geographyV2.province"
    },
    {
      id   = "builtin.geographyV2.region"
      name = "builtin.geographyV2.region"
    },
    {
      id   = "builtin.geographyV2.county"
      name = "builtin.geographyV2.county"
    },
    {
      id   = "builtin.geographyV2.postalCode"
      name = "builtin.geographyV2.postalCode"
    },
    {
      id   = "builtin.geographyV2.address"
      name = "builtin.geographyV2.address"
    },
    {
      id   = "builtin.geographyV2.poi"
      name = "builtin.geographyV2.poi"
    },
    {
      id   = "builtin.geographyV2.landmark"
      name = "builtin.geographyV2.landmark"
    },
    {
      id   = "builtin.geographyV2.place"
      name = "builtin.geographyV2.place"
    },
    {
      id   = "builtin.geographyV2.latlong"
      name = "builtin.geographyV2.latlong"
    },
    {
      id   = "
}

