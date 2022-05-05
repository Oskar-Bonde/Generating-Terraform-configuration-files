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
  name     = "rg-test"
  location = "westus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_3" {
  name                = "cognitive-account-test"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_3" {
  name                = "cognitive-account-test"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "bot-channels-registration-test"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  microsoft_app_id    = "00000000-0000-0000-0000-000000000000"
  cognitive_models {
    name = "test"
    cognitive_model {
      version = "0.1"
      description = "test"
      cognitive_model_endpoint_key = azurerm_cognitive_account.name_3.endpoint
      cognitive_model_endpoint_region = azurerm_cognitive_account.name_3.location
      cognitive_model_subscription_key = azurerm_cognitive_account.name_3.primary_access_key
    }
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_5" {
  name                = "bot-channel-direct-line-speech-test"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_channels_registration_id = azurerm_bot_channels_registration.name_4.id
  client_secret       = "client-secret"
  client_id           = "client-id"
  speech_subscription_key = azurerm_cognitive_account.name_3.primary_access_key
  speech_region       = azurerm_cognitive_account.name_3.location
}

