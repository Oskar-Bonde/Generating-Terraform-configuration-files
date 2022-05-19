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
  name     = "rg-name"
  location = "westus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "cognitive-account-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "bot-channels-registration-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "F0"
  microsoft_app_id    = "microsoft-app-id"
  microsoft_app_password = "microsoft-app-password"
  endpoint            = "https://endpoint.com"
  developer_app_insights_key = "developer-app-insights-key"
  cognitive_models {
    dispatch_model_id = "dispatch-model-id"
    language_model_id = "language-model-id"
  }
  tags = {
    environment = "Production"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_4" {
  name                = "bot-channel-direct-line-speech-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_channels_registration_id = azurerm_bot_channels_registration.name_3.id
  cognitive_services_authoring_key = azurerm_cognitive_account.name_1.primary_access_key
  cognitive_services_authoring_region = azurerm_cognitive_account.name_1.location
  speech_subscription_key = "speech-subscription-key"
  speech_region = "speech-region"
  client_id = data.azurerm_client_config.name_2.client_id
  client_secret = data.azurerm_client_config.name_2.client_secret
  tenant_id = data.azurerm_client_config.name_2.tenant_id
}

