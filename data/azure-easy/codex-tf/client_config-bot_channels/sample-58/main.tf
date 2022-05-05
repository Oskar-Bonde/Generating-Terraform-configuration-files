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

# data block, azurem client config
data "azurerm_client_config" "name_1" {}

# create a storage account
resource "azurerm_storage_account" "name_2" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = azurerm_resource_group.name_0.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "bot-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  endpoint            = "https://bot-name.azurewebsites.net/api/messages"
  msi_endpoint        = "https://bot-name.azurewebsites.net/api/messages"
  msi_secret          = "secret"
  microsoft_app_id    = "app-id"
  developer_app_insights_key = "app-insights-key"
  developer_app_insights_api_key = "app-insights-api-key"
  developer_app_insights_application_id = "app-insights-application-id"
  tags = {
    environment = "dev"
  }
}

