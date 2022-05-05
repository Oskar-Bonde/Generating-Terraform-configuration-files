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

# data block, azurem client config
data "azurerm_client_config" "name_1" {}

# create a storage account
resource "azurerm_storage_account" "name_2" {
  name                     = "mystorageaccount"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = azurerm_resource_group.name_0.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "mybot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  endpoint            = "https://mybot.azurewebsites.net/api/messages"
  msi_endpoint        = "https://mybot.azurewebsites.net/api/messages"
  msi_secret          = "mysecret"
  tags                = {
    environment = "production"
  }

  microsoft_app_id = "my-app-id"
  microsoft_app_password = "my-app-password"

  app_settings = {
    "MicrosoftAppId" = "my-app-id"
    "MicrosoftAppPassword" = "my-app-password"
    "StorageAccountConnectionString" = azurerm_storage_account.name_2.primary_connection_string
  }

  app_insights_api_key = data.azurerm_client_config.name_1.app_insights_api_key
  app_insights_application_id = data.azurerm_client_config.name_1.app_insights_application_id
}

