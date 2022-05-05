# Terraform block with azure provider
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
  name     = "example-resources"
  location = "West Europe"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "example-cogacct"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "SpeechServices"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "example-bcr"
  location            = "global"
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  microsoft_app_id    = data.azurerm_client_config.name_2.client_id
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_4" {
  bot_name                     = azurerm_bot_channels_registration.name_3.name
  location                     = azurerm_bot_channels_registration.name_3.location
  resource_group_name          = azurerm_resource_group.name_0.name
  cognitive_service_location   = azurerm_cognitive_account.name_1.location
  cognitive_service_access_key = azurerm_cognitive_account.name_1.primary_access_key
}