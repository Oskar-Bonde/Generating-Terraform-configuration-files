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
  location = "West US"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "myCognitiveAccount"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "S0"
  kind                = "TextAnalytics"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "myBotChannelsRegistration"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "bot"
  microsoft_app_id    = "00000000-0000-0000-0000-000000000000"
  microsoft_app_password = "password"
  endpoint            = "https://mybot.azurewebsites.net/api/messages"
  developer_app_insights_key = "00000000-0000-0000-0000-000000000000"
  tags                = {
    environment = "production"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_4" {
  name                = "myBotChannelDirectLineSpeech"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_channels_registration_id = azurerm_bot_channels_registration.name_3.id
  cognitive_services_account_id = azurerm_cognitive_account.name_1.id
  client_id           = data.azurerm_client_config.name_2.client_id
  client_secret       = data.azurerm_client_config.name_2.client_secret
  tenant_id           = data.azurerm_client_config.name_2.tenant_id
}

