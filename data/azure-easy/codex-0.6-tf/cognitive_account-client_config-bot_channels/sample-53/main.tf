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
  location = "West US"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "my-cog-acc"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "my-bot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  endpoint            = "https://my-bot.azurewebsites.net/api/messages"
  msa_app_id          = data.azurerm_client_config.name_2.object_id
  developer_app_insights_key = "00000000-0000-0000-0000-000000000000"
  developer_app_insights_api_key = "00000000-0000-0000-0000-000000000000"
  developer_app_insights_application_id = "00000000-0000-0000-0000-000000000000"
  cognitive_models {
    text_analytics {
      key = azurerm_cognitive_account.name_1.primary_access_key
      endpoint = azurerm_cognitive_account.name_1.endpoint
    }
  }
}

