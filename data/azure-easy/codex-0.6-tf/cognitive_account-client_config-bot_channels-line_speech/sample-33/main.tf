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
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "bot-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  microsoft_app_id    = "app-id"
  microsoft_app_password = "app-password"
  endpoint            = "https://bot-name.azurewebsites.net/api/messages"
  developer_app_insights_key = "app-insights-key"
  developer_app_insights_api_key = "app-insights-api-key"
  developer_app_insights_application_id = "app-insights-application-id"
  tags = {
    environment = "dev"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_4" {
  name                = "bot-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_name            = azurerm_bot_channels_registration.name_3.name
  cognitive_models    = [
    {
      id = "builtin.number"
    },
    {
      id = "builtin.ordinal"
    },
    {
      id = "builtin.percentage"
    },
    {
      id = "builtin.currency"
    },
    {
      id = "builtin.datetimeV2.date"
    },
    {
      id = "builtin.datetimeV2.time"
    },
    {
      id = "builtin.datetimeV2.datetime"
    },
    {
      id = "builtin.datetimeV2.daterange"
    },
    {
      id = "builtin.datetimeV2.timerange"
    },
    {
      id = "builtin.datetimeV2.datetimerange"
    },
    {
      id = "builtin.datetimeV2.duration"
    },
    {
      id = "builtin.datetimeV2.set"
    },
    {
      id = "builtin.datetimeV2.durationset"
    },
    {
      id = "builtin.geographyV2.city"
    },
    {
      id = "builtin.geographyV2.continent"
    },
    {
      id = "builtin.geographyV2.country"
    },
    {
      id = "builtin.geographyV2.state"
    },
    {
      id = "builtin.geographyV2.province"
    },
    {
      id = "builtin.geographyV2.county"
    },
    {
      id = "builtin.geographyV2.postalCode"
    },
    {
      id = "builtin.geographyV2.landmark"
    },
    {
      id = "builtin.geographyV2.region"
    },
    {
      id = "builtin.geographyV2.poi"
    },
    {
      id = "builtin.geographyV2.address"
    },
    {
      id = "builtin.geographyV2.localBusiness"
    },
    {
      id = "builtin.geographyV2.airport"
    },
    {
      id = "builtin.geographyV2.pointOfInterest"
    },
    {
      id = "builtin.geographyV2.populatedPlace"
    },
    {
      id = "builtin.geographyV2.geopoliticalEntity"
    },
    {
      id = "builtin.geographyV2.address"
    },
    {
      id = "builtin.geographyV2.place"
    },
    {
      id = "builtin.geographyV2.place"
    },
    {
      id = "builtin.geographyV2.place"
    },
    {
      id = "builtin.geographyV2.place"
    },
    {
      id = "builtin.geographyV2.place"
    },
    {
      id = "builtin.geographyV2.place"
    },
    {
      id = "builtin.geographyV2.place"
    },
    {
      id = "builtin.geographyV2.place"
    },
    {
      id = "builtin.geographyV2.place"
    },
    {
      id = "builtin.geographyV2.place"
    },
    {
      id = "builtin.geographyV2.place"
    },
    {
      id = "builtin.geographyV2.place"
    },
    {
      id = "builtin.geographyV2.place"
    },
    {
      id = "builtin.geographyV2.place"
}

