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
resource "azurerm_service_principal" "name_3" {
  application_id = data.azurerm_client_config.name_2.service_principal_application_id
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "bot-terraform-demo"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  microsoft_app_id    = "app-id"
  microsoft_app_password = "app-password"
  endpoint            = "https://bot-terraform-demo.azurewebsites.net/api/messages"
  developer_app_insights_key = "app-insights-key"
  developer_app_insights_api_key = "app-insights-api-key"
  cognitive_models {
    model_id = azurerm_cognitive_account.name_1.id
    subscription_key = azurerm_cognitive_account.name_1.primary_access_key
    version = "0.1"
  }
  tags = {
    environment = "dev"
  }
}

