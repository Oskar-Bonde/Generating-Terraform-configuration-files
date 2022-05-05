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

# create storage account
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
  app_id              = "myappid"
  app_password        = "myapppassword"
  tags                = {
    environment = "dev"
  }

  microsoft_app_credentials {
    app_id     = "myappid"
    password   = "myapppassword"
  }

  connection_setting {
    name = "myconnection"
    service_provider_name = "myconnection"
    client_id = "myclientid"
    client_secret = "myclientsecret"
    scope = "myconnection"
  }

  luis_application {
    name = "myluisapp"
    location = "westus"
    authoring_key = "myluisauthoringkey"
    version = "0.1"
    endpoint_key = "myluisendpointkey"
    endpoint = "https://westus.api.cognitive.microsoft.com/luis/v2.0/apps/myluisapp"
  }

  storage_account {
    name = azurerm_storage_account.name_2.name
    access_key = azurerm_storage_account.name_2.primary_access_key
  }

  client_config {
    endpoint = "https://mybot.azurewebsites.net/api/messages"
    msa_app_id = "mymsaappid"
    msa_password = "mymsapassword"
    msa_oauth_endpoint = "https://login.microsoftonline.com/botframework.com
}

