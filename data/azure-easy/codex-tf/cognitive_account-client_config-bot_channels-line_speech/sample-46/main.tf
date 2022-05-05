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
resource "azurerm_cognitive_account" "name_3" {
  name                = "myCognitiveAccount"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "CognitiveServices"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_3" {
  name                = "myCognitiveAccount"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "CognitiveServices"
  sku_name            = "S0"
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "myBotChannelsRegistration"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "bot"
  tags                = {
    environment = "production"
  }
  microsoft_app_id    = azurerm_bot_channels_registration.name_4.microsoft_app_id
  endpoint            = "https://mybot.azurewebsites.net/api/messages"
  msi_endpoint        = "https://mybot.azurewebsites.net/api/messages"
  developer_app_insights_key = azurerm_cognitive_account.name_3.primary_access_key
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_5" {
  name                = "myBotChannelDirectLineSpeech"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_name            = azurerm_bot_channels_registration.name_4.name
  bot_resource_group  = azurerm_bot_channels_registration.name_4.resource_group_name
  cognitive_services_authoring_key = azurerm_cognitive_account.name_3.primary_access_key
  cognitive_services_authoring_region = azurerm_cognitive_account.name_3.location
}

