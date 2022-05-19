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
  name     = "rg-terraform"
  location = "eastus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "cog-terraform"
  location            = "eastus"
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "bot-terraform"
  location            = "eastus"
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  endpoint            = "https://bot-terraform.azurewebsites.net/api/messages"
  microsoft_app_id    = "12345678-1234-1234-1234-123456789012"
  microsoft_app_password = "abcdefghijklmnopqrstuvwxyz"
  tags                = {
    environment = "Terraform Demo"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_4" {
  name                = "bot-terraform"
  location            = "eastus"
  resource_group_name = azurerm_resource_group.name_0.name
  cognitive_services_account_name = azurerm_cognitive_account.name_1.name
  cognitive_services_account_key  = azurerm_cognitive_account.name_1.primary_access_key
  cognitive_services_account_region = azurerm_cognitive_account.name_1.location
  bot_id              = azurerm_bot_channels_registration.name_3.id
  bot_name            = azurerm_bot_channels_registration.name_3.name
  client_id           = data.azurerm_client_config.name_2.client_id
  client_secret       = data.azurerm_client_config.name_2.client_secret
  tenant_id           = data.azurerm_client_config.name_2.tenant_id
}

