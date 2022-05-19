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
  name                = "myBot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  endpoint            = "https://mybot.azurewebsites.net/api/messages"
  microsoft_app_id    = "my-app-id"
  microsoft_app_password = "my-app-password"
  tags = {
    environment = "Production"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_4" {
  name                = "myBot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_name            = azurerm_bot_channels_registration.name_3.name
  bot_resource_group  = azurerm_bot_channels_registration.name_3.resource_group_name
  cognitive_models    = [
    {
      name = "general"
    },
  ]
  speech_recognition_language = "en-US"
  subscription_key            = data.azurerm_client_config.name_2.subscription_id
  client_id                   = data.azurerm_client_config.name_2.object_id
  client_secret               = data.azurerm_client_config.name_2.client_secret
  tenant_id                   = data.azurerm_client_config.name_2.tenant_id
}

