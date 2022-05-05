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

# data block, azurem cognitive account keys
data "azurerm_cognitive_account_keys" "name_3" {
  name                = azurerm_cognitive_account.name_1.name
  resource_group_name = azurerm_resource_group.name_0.name
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "bot-channels-registration-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  microsoft_app_id    = "microsoft-app-id"
  microsoft_app_password = "microsoft-app-password"
  endpoint            = "https://endpoint.com"
  developer_app_insights_key = "developer-app-insights-key"
  developer_app_insights_api_key = "developer-app-insights-api-key"
  developer_app_insights_application_id = "developer-app-insights-application-id"
  cognitive_models {
    cognitive_model_id = "cognitive-model-id"
    version = "cognitive-model-version"
    cognitive_model_endpoint_key = data.azurerm_cognitive_account_keys.name_3.key1
    cognitive_model_endpoint = azurerm_cognitive_account.name_1.endpoint
  }
  tags = {
    environment = "Production"
  }
}

