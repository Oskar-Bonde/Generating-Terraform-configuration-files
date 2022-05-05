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

# create cognitive account key
resource "azurerm_cognitive_account_key" "name_3" {
  name                = azurerm_cognitive_account.name_1.name
  resource_group_name = azurerm_resource_group.name_0.name
  key_name            = "key1"
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "my-bot-channels-registration"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "F0"
  microsoft_app_id    = "00000000-0000-0000-0000-000000000000"
  cognitive_models    = [
    {
      name = "my-cognitive-model"
      version = "0.1"
      description = "my-cognitive-model-description"
      cognitive_model = jsonencode({
        "luis_schema_version": "3.2.0",
        "versionId": "0.1",
        "name": "my-cognitive-model",
        "desc": "my-cognitive-model-description",
        "culture": "en-us",
        "intents": [],
        "entities": [],
        "composites": [],
        "closedLists": [],
        "model_features": [],
        "regex_features": [],
        "patterns": [],
        "utterances": [],
        "settings": []
      })
    }
  ]
}

