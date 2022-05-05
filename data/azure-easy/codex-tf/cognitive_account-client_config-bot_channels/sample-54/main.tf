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
  location = "West Europe"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "my-cognitive-account"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create cognitive account key
resource "azurerm_cognitive_account_key" "name_3" {
  name                = azurerm_cognitive_account.name_1.name
  resource_group_name = azurerm_resource_group.name_0.name
  key_name            = "key1"
  key_vault_uri       = data.azurerm_client_config.name_2.key_vault_endpoint
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "my-bot-channels-registration"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "bot"
  microsoft_app_id    = "00000000-0000-0000-0000-000000000000"
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    language          = "en-us"
  }
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    language          = "en-gb"
  }
  endpoint {
    name     = "development"
    endpoint = "https://my-bot-channels-registration.azurewebsites.net/api/messages"
  }
  endpoint {
    name     = "production"
    endpoint = "https://my-bot-channels-registration.azurewebsites.net/api/messages"
  }
  tags = {
    environment = "production"
  }
}

