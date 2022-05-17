terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create resource group with storage account
resource "azurerm_resource_group" "name_1" {
  name     = "myTFStorageGroup"
  location = "westus2"
}

# create cognitive account resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFCognitiveGroup"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_subscription" "name_3" {}

# create storage account
resource "azurerm_storage_account" "name_4" {
  name                     = "bosh"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = data.azurerm_resource_group.name_1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# create bot channels registration resource
resource "azurerm_bot_application_registration" "name_5" {
  name                = "bosh"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = data.azurerm_resource_group.name_1.location
  sku                 = "Standard"
  webhook_url          = "https://hooks.bosh.com/services/auth/bosh"
  token_uri            = "https://auth.bosh.com/oauth/token"
  tenant_id           = data.azurerm_client_config.current.tenant_id
}

