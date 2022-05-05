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
  name     = "my-resource-group"
  location = "westus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "my-cognitive-account"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create cognitive account keys
resource "azurerm_cognitive_account_keys" "name_3" {
  cognitive_account_name = azurerm_cognitive_account.name_1.name
  resource_group_name    = azurerm_resource_group.name_0.name
  client_id              = data.azurerm_client_config.name_2.client_id
  client_secret          = data.azurerm_client_config.name_2.client_secret
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "my-bot-channels-registration"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "bot"
  microsoft_app_id    = "00000000-0000-0000-0000-000000000000"
  cognitive_models    = [
    {
      name = "en-us"
    },
  ]
  cognitive_account_name = azurerm_cognitive_account.name_1.name
  cognitive_account_key  = azurerm_cognitive_account_keys.name_3.key1
}

