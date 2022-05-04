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

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group
resource "azurerm_storage_account" "name_3" {
  name                     = "example-storage-account"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create storage account for example resource
resource "azurerm_storage_account" "name_3" {
  name                     = "example-storage-account"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_channel_registration" "name_4" {
  name                = "example-channel-registration"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = "westus2"
  sku                 = "Standard"
  client_id          = data.azurerm_client_config.name_2.client_id
  client_secret      = data.azurerm_client_config.name_2.client_secret
  custom_attributes = {
    "azure.io/subscription-id" = data.azurerm_client_config.name_2.subscription_id
    "azure.io/client-id"    = data.azurerm_client_config.name_2.client_id
    "azure.io/client-secret" = data.azurerm_client_config.name_2.client_secret
    "azure.io/subscription-id" = data.azurerm_client_config.name_2.subscription_id
    "azure.io/client-id"    = data.azurerm_client_config.name_2.client_id
    "azure.io/client-secret" = data.azurerm_client_config.name_2.client_secret
    "azure.io/subscription-id" = data.azurerm_client_config.name_2.subscription_id
    "azure.io/client-id"    = data.azurerm_client_config.name_2.client_id
    "azure.io/client-secret" = data.azurerm_client_config.name_2.client_secret
    "azure.io/subscription-id" = data.azurerm_client_config.name_2.subscription_id
    "azure.io/client-id"    = data.azurerm_client_config.name_2.client_id
    "azure.io/client-secret" = data.azurerm_client_config.name_2.client_secret
    "azure.io/subscription-id" = data.azurerm_client_config.name_2.subscription_id
    "azure.io/client-id"    = data.azurerm_client_config.name_2.client_id
    "azure.io/client-secret" = data.azurerm_client_config.name_2.client_secret
    "azure.io/subscription-id" = data.azurerm_client_config.name_2.subscription_id
    "azure.io/client-id"    = data.azurerm_client_config
}

