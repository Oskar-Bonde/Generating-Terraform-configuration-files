terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm
provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_test"
  location = "westus2"
}

# data block, azurem client configresource
data "azurerm_client_config" "name_1" {}

# create storage account
resource "azurerm_storage_account" "name_2" {
  name                     = "test"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# create bot channels registration resource
resource "azurerm_channel_registration" "name_3" {
  channel_id                 = azurerm_channel_registration.name_3.id
  client_id                  = azurerm_client_config.current.client_id
  client_secret             = data.azurerm_client_config.name_1.client_secret
  client_secret_version    = "2.0"
}

