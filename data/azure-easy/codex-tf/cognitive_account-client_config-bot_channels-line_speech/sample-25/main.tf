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

# data block, azurem cognitive account key
data "azurerm_cognitive_account_key" "name_3" {
  name                = azurerm_cognitive_account.name_1.name
  resource_group_name = azurerm_resource_group.name_0.name
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "bot-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  microsoft_app_id    = data.azurerm_client_config.name_2.client_id
  microsoft_app_password = data.azurerm_client_config.name_2.client_secret

  endpoint {
    name    = "production"
    endpoint_url = "https://bot-name.azurewebsites.net/api/messages"
  }

  endpoint {
    name    = "staging"
    endpoint_url = "https://bot-name-staging.azurewebsites.net/api/messages"
  }

  endpoint {
    name    = "development"
    endpoint_url = "https://bot-name-development.azurewebsites.net/api/messages"
  }

  endpoint {
    name    = "test"
    endpoint_url = "https://bot-name-test.azurewebsites.net/api/messages"
  }

  endpoint {
    name    = "local"
    endpoint_url = "http://localhost:3978/api/messages"
  }

  endpoint {
    name    = "emulator"
    endpoint_url = "http://localhost:53978/api/messages"
  }

  endpoint {
    name    = "ngrok"
    endpoint_url = "https://ngrok.io/api/messages"
  }

  endpoint {
    name    = "ngrok-staging"
    endpoint_url = "https://ngrok-staging.io/api/messages"
  }

  endpoint {
    name    = "ngrok-development"
    endpoint_url = "https://ngrok-development.io/api/messages"
  }

  endpoint {
    name    = "ngrok-test"
    endpoint_url = "https://ng
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_5" {
  name                = "bot-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  cognitive_models    = [
    {
      name = "general"
    },
  ]
  speech_subscription_key = data.azurerm_cognitive_account_key.name_3.key1
  speech_region           = azurerm_resource_group.name_0.location
}

