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
  name     = "rg-terraform-demo"
  location = "eastus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "cog-account-demo"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "bot-registration-demo"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  microsoft_app_id    = "app_id"
  microsoft_app_password = "app_password"
  endpoint            = "https://bot-registration-demo.azurewebsites.net/api/messages"
  tags                = {
    environment = "Terraform Demo"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_4" {
  name                = "bot-channel-direct-line-speech-demo"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_id              = azurerm_bot_channels_registration.name_3.id
  cognitive_models    = [
    {
      locale = "en-us"
      model_id = "builtin/conversational"
    },
  ]
  speech_subscription_key = "subscription_key"
  speech_region           = "westus"
}

