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
  kind                = "TextAnalytics"
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
  name                = "my-bot-channels-registration"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "F0"
  microsoft_app_id    = "00000000-0000-0000-0000-000000000000"
  microsoft_app_password = "00000000000000000000000000000000"
  endpoint            = "https://my-bot-channels-registration.azurewebsites.net/api/messages"
  developer_app_insights_key = "00000000000000000000000000000000"
  cognitive_models {
    name = "Language Understanding"
    version = "0.1"
    intents {
      name = "HomeAutomation.TurnOff"
      utterances = [
        "turn off the lights",
        "turn off the light",
        "turn off the lamp",
        "turn off the lamps",
        "turn off the light in the kitchen",
        "turn off the lights in the kitchen",
        "turn off the lights in the living room",
        "turn off the light in the living room",
        "turn off the lamp in the kitchen",
        "turn off the lamps in the kitchen",
        "turn off the lamp in the living room",
        "turn off the lamps in the living room",
        "turn off the kitchen lights",
        "turn off the kitchen light",
        "turn off the kitchen lamp",
        "turn off the kitchen lamps",
        "turn off the living room lights",
        "turn off the living room light",
        "turn off the living room lamp",
        "turn off the living room lamps",
        "turn off the lights in the kitchen and living room",
        "turn off the light in the kitchen and living room",
        "turn off the lamp in the kitchen and living room",
        "turn off the lamps in the kitchen and living room",
        "turn off the kitchen lights and living room lights",
        "turn off the kitchen light and living room light",
        "turn off the kitchen lamp and living room lamp",
        "turn off the kitchen lamps
}

