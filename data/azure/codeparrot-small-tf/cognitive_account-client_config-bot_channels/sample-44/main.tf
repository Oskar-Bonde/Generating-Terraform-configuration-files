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

  tags = {
    environment = "test"
  }
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create storage account for storage account
resource "azurerm_storage_account" "name_3" {
  name                     = "example-storage-account"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "test"
  }
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_channel_registration" "name_4" {
  name                = "example-channel-registration"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = "westus2"
  sku                 = "F0"
  identity_type        = "SystemAssigned"
  webhook_url          = "https://github.com/azure/webhook"

  # azurerm_storage_account_sku needs to be provided in order to create storage account for channel registration
  storage_account_sku = "Standard"

  # azurerm_channel_registration_sku needs to be provided in order to create channel registration for channel registration
  channel_registration_sku = "Standard"

  # azurerm_webhook_url needs to be provided in order to create webhook for webhook registration
  webhook_url = "https://github.com/azure/webhook"

  # azurerm_storage_account_sku needs to be provided in order to create storage account for webhook registration
  storage_account_sku = "Standard"

  # azurerm_channel_registration_sku needs to be provided in order to create channel registration for channel registration
  channel_registration_sku = "Standard"

  # azurerm_webhook_url needs to be provided in order to create webhook for webhook registration
  webhook_url = "https://github.com/azure/webhook"

  # azurerm_storage_account_sku needs to be provided in order to create storage account for webhook registration
  storage_account_sku = "Standard"

  # azurerm_channel_registration_sku needs to be provided in order to create channel registration for webhook registration
  channel_registration_sku = "Standard"

  # azurerm_webhook_url needs to be provided in order to create webhook for webhook registration
  webhook_url = "https://github.com/azure/webhook"

  # azurerm_storage_account_sku needs to be provided in order to create storage account for webhook registration
  storage_account_sku = "Standard"

  # azurerm_webhook_url needs to be provided in order to create webhook for webhook registration
  webhook_url = "https://github.com/azure/webhook"

  # azurerm_storage_account_sku needs to be provided in order to create storage account for webhook registration
  storage_account_sku = "Standard"

  # azurerm_webhook_url needs to be
}

