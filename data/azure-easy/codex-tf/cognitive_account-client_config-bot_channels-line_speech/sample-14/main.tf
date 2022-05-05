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
  name                = "cognitive-account-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# data block, azurem cognitive account keys
data "azurerm_cognitive_account_keys" "name_3" {
  name                = azurerm_cognitive_account.name_1.name
  resource_group_name = azurerm_resource_group.name_0.name
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "bot-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "F0"
  microsoft_app_id    = "app-id"
  microsoft_app_password = "app-password"
  endpoint            = "https://bot-name.azurewebsites.net/api/messages"
  cognitive_services  = [
    {
      name                = azurerm_cognitive_account.name_1.name
      resource_group_name = azurerm_resource_group.name_0.name
      location            = azurerm_resource_group.name_0.location
      key                 = data.azurerm_cognitive_account_keys.name_3.key_1
    },
  ]
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_5" {
  name                = "bot-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_name            = azurerm_bot_channels_registration.name_4.name
  app_id              = azurerm_bot_channels_registration.name_4.microsoft_app_id
  app_password        = azurerm_bot_channels_registration.name_4.microsoft_app_password
  client_id           = data.azurerm_client_config.name_2.client_id
  client_secret       = data.azurerm_client_config.name_2.client_secret
  tenant_id           = data.azurerm_client_config.name_2.tenant_id
  speech_subscription_key = data.azurerm_cognitive_account_keys.name_3.key_1
  speech_region       = azurerm_cognitive_account.name_1.location
}

