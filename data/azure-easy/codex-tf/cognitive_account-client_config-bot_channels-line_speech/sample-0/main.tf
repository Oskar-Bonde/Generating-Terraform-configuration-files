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
  location = "westus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_3" {
  name                = "cog-test"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# data block, azurem cognitive account
data "azurerm_cognitive_account" "name_3" {
  name                = azurerm_cognitive_account.name_1.name
  resource_group_name = azurerm_resource_group.name_0.name
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "bot-test"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "F0"
  microsoft_app_id    = "12345678-1234-1234-1234-123456789012"
  microsoft_app_password = "12345678-1234-1234-1234-123456789012"
  cognitive_services {
    cognitive_services_type = "QnA"
    cognitive_services_name = azurerm_cognitive_account.name_1.name
    cognitive_services_subscription_key = data.azurerm_cognitive_account.name_3.primary_access_key
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_5" {
  name                = "bot-test"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_name            = azurerm_bot_channels_registration.name_4.name
  bot_resource_group  = azurerm_resource_group.name_0.name
  subscription_key    = data.azurerm_client_config.name_2.subscription_id
  region              = "westus"
}

