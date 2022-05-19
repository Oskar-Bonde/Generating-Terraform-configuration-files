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
  name                = "mycognitiveaccount"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "mybot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "bot"
  microsoft_app_id    = azurerm_cognitive_account.name_1.app_id
  microsoft_app_password = azurerm_cognitive_account.name_1.endpoint_key
  endpoint            = "https://${azurerm_bot_channels_registration.name_3.name}.azurewebsites.net/api/messages"
  developer_app_insights_key = azurerm_cognitive_account.name_1.app_insights_key
  developer_app_insights_api_key = azurerm_cognitive_account.name_1.app_insights_api_key
  developer_app_insights_application_id = azurerm_cognitive_account.name_1.app_insights_application_id
  tags = {
    environment = "production"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_4" {
  name                = "mybot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_channels_registration_id = azurerm_bot_channels_registration.name_3.id
  client_secret       = azurerm_cognitive_account.name_1.endpoint_key
  client_id           = azurerm_cognitive_account.name_1.app_id
  speech_subscription_key = azurerm_cognitive_account.name_1.speech_subscription_key
  speech_region       = azurerm_cognitive_account.name_1.speech_region
  tags = {
    environment = "production"
  }
}

