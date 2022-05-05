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

  microsoft_app_id = "00000000-0000-0000-0000-000000000000"
  microsoft_app_password = "password"

  endpoint = "https://mybot.azurewebsites.net/api/messages"

  tags = {
    environment = "production"
  }

  client_configuration {
    client_id = data.azurerm_client_config.name_1.client_id
    client_secret = data.azurerm_client_config.name_1.client_secret
    tenant_id = data.azurerm_client_config.name_1.tenant_id
  }

  storage_configuration {
    storage_account_name = azurerm_storage_account.name_2.name
    storage_account_key = azurerm_storage_account.name_2.primary_access_key
    container = "bot-state"
  }
}

