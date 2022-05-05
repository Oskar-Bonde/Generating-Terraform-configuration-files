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
  location = "West US"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "my-cog-account"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "CognitiveServices"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create cognitive account keys
resource "azurerm_cognitive_account_keys" "name_3" {
  name                = azurerm_cognitive_account.name_1.name
  resource_group_name = azurerm_resource_group.name_0.name
  key_name            = "key1"
  key_vault_id        = azurerm_key_vault.kv.id
  key_vault_client_id = data.azurerm_client_config.name_2.client_id
  key_vault_client_secret = data.azurerm_client_config.name_2.client_secret
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "my-bot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "bot"
  microsoft_app_id    = "my-app-id"
  cognitive_services  = [
    {
      name                = azurerm_cognitive_account.name_1.name
      resource_group_name = azurerm_resource_group.name_0.name
      location            = azurerm_resource_group.name_0.location
      key_name            = azurerm_cognitive_account_keys.name_3.key_name
      key_vault_id        = azurerm_key_vault.kv.id
      key_vault_client_id = data.azurerm_client_config.name_2.client_id
      key_vault_client_secret = data.azurerm_client_config.name_2.client_secret
    },
  ]
}

