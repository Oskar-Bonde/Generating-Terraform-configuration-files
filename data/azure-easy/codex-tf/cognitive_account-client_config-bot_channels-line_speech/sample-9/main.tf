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
  location = "westus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "my-cog-account"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "S0"
  kind                = "CognitiveServices"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create a service principal
resource "azurerm_azuread_application" "name_3" {
  name = "my-app"
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "my-bot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "bot"
  microsoft_app_id    = azurerm_azuread_application.name_3.application_id
  endpoint            = "https://my-bot.azurewebsites.net/api/messages"
  developer_app_insights_api_key = azurerm_cognitive_account.name_1.primary_access_key
  developer_app_insights_application_id = azurerm_cognitive_account.name_1.primary_access_key
  tags = {
    environment = "Production"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_5" {
  name                = "my-bot-channel"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_id              = azurerm_bot_channels_registration.name_4.id
  cognitive_services_authoring_key = azurerm_cognitive_account.name_1.primary_access_key
  cognitive_services_authoring_region = azurerm_cognitive_account.name_1.location
  client_secret       = data.azurerm_client_config.name_2.client_secret
  client_id           = data.azurerm_client_config.name_2.client_id
  tenant_id           = data.azurerm_client_config.name_2.tenant_id
}

