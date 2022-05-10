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
  name     = "rg-terraform-demo"
  location = "eastus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "cog-terraform-demo"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create a service principal
resource "azurerm_azuread_application" "name_3" {
  name = "app-terraform-demo"
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "bot-terraform-demo"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  endpoint            = "https://bot-terraform-demo.azurewebsites.net/api/messages"
  microsoft_app_id    = azurerm_azuread_application.name_3.application_id
  developer_app_insights_key = "00000000-0000-0000-0000-000000000000"
  developer_app_insights_api_key = "00000000-0000-0000-0000-000000000000"
  developer_app_insights_application_id = "00000000-0000-0000-0000-000000000000"
  tags = {
    environment = "Terraform Demo"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_directline_speech" "name_5" {
  name                = "bot-terraform-demo"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_name            = azurerm_bot_channels_registration.name_4.name
  cognitive_models    = [
    {
      id   = "00000000-0000-0000-0000-000000000000"
      name = "00000000-0000-0000-0000-000000000000"
    },
  ]
  speech_subscription_key = azurerm_cognitive_account.name_1.primary_access_key
  speech_region           = azurerm_cognitive_account.name_1.location
  speech_endpoint_id      = azurerm_cognitive_account.name_1.endpoint
  client_id               = data.azurerm_client_config.name_2.client_id
  client_secret           = data.azurerm_client_config.name_2.client_secret
  tenant_id               = data.azurerm_client_config.name_2.tenant_id
}
