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
  location = "eastus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "cog-test"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create cognitive key resource
resource "azurerm_cognitive_account_key" "name_3" {
  name                = azurerm_cognitive_account.name_1.name
  resource_group_name = azurerm_resource_group.name_0.name
  key_name            = "key1"
  key_vault_uri       = "https://test-vault.vault.azure.net/"
  key_vault_client_id = data.azurerm_client_config.name_2.client_id
  key_vault_client_secret = data.azurerm_client_config.name_2.client_secret
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "bot-test"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "F0"
  microsoft_app_id    = "00000000-0000-0000-0000-000000000000"
  cognitive_services  = [
    {
      name                = azurerm_cognitive_account.name_1.name
      resource_group_name = azurerm_resource_group.name_0.name
      location            = azurerm_resource_group.name_0.location
      key_name            = azurerm_cognitive_account_key.name_3.key_name
      key_vault_uri       = azurerm_cognitive_account_key.name_3.key_vault_uri
      key_vault_client_id = azurerm_cognitive_account_key.name_3.key_vault_client_id
      key_vault_client_secret = azurerm_cognitive_account_key.name_3.key_vault_client_secret
    },
  ]
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_5" {
  name                = "bot-test"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  app_id              = azurerm_bot_channels_registration.name_4.microsoft_app_id
  speech_subscription_key = azurerm_cognitive_account_key.name_3.key
  speech_region       = azurerm_cognitive_account.name_1.location
}

