terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features block
provider "azurerm" {
  features {}
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "example-resources"
  location = "westus2"
}

# data block, azurem client configresource block
data "azurerm_client_config" "name_1" {}

# create storage account for storage account
resource "azurerm_storage_account" "name_2" {
  name                     = "myazurestorageaccount"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = azurerm_resource_group.name_0.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group nameresource with azurerm_resource_group.name_0.name
resource "azurerm_channel_registration" "name_3" {
  name                = "mychannelregistration"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  sku                 = "Standard"
  client_id            = azurerm_client_config.current.client_id
  client_secret        = azurerm_client_config.current.client_secret
  client_secret_version = azurerm_client_config.current.client_secret_version
  subscription_id = azurerm_resource_group.name_0.id
}

