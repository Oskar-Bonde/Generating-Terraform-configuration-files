terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure
provider "azurerm" {
  version = "=2.0.0"
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
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create service principal
resource "azurerm_azuread_application" "name_3" {
  name = "my-app"
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "my-bot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  endpoint            = "https://my-bot.azurewebsites.net/api/messages"
  microsoft_app_id    = azurerm_azuread_application.name_3.application_id
  developer_app_insights_key = "12345678-1234-1234-1234-123456789012"
  developer_app_insights_api_key = "12345678-1234-1234-1234-123456789012"
  developer_app_insights_application_id = "12345678-1234-1234-1234-123456789012"
  tags = {
    environment = "production"
  }
}

