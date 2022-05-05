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
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create cognitive account resourceresource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create storage account resource group
resource "azurerm_storage_account" "name_3" {
  name                     = "mytfstorageaccount"
  resource_group_name      = azurerm_resource_group.name_1.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create bot channels registration resource
resource "azurerm_registration" "name_4" {
  name                = "mytfregistration"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = "westus2"
  sku                 = "standard"
  account_tier        = "Standard"
  account_replication_type = "LRS"

  # create webhook channel
  webhook_channel_id = "webhook-channel-1"
}

# resource block called bot channel direct line speech
resource "azurerm_webhook_channel" "name_5" {
  name                = "webhook-channel-1"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = "westus2"
  webhook_token_secret = "webhook-token-secret-1"

  # create webhook channel
  webhook_channel_id = "webhook-channel-2"
}

