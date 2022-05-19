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
resource "azurerm_storage_account" "name_1" {
  name                     = "example-storage-account"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" 
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_channel_registration" "name_3" {
  name                = "example-channel-registration"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  sku                 = "Standard"
  client_id            = azurerm_client_config.current.client_id
  client_secret        = data.azurerm_client_config.name_2.client_secret
  client_secret_version = "2.0"
  # azurerm_client_config.current.client_id = azurerm_client_config.current.client_id
  # azurerm_client_config.current.client_secret = azurerm_client_config.current.client_secret
  # azurerm_client_config.current.client_secret_version = azurerm_client_config.current.client_secret_version
  # azurerm_client_config.current.client_secret_type = "SYMMETRIC_WEBHOOK"
  # azurerm_client_config.current.client_secret_id = azurerm_client_config.current.client_secret_id
  # azurerm_client_config.current.client_secret_type = "WEBHOOK"
  # azurerm_client_config.current.client_secret_id = azurerm_client_config.current.client_secret_id
  # azurerm_client_config.current.client_secret_type = "WEBHOOK"
  # azurerm_client_config.current.client_secret_id = azurerm_client_config.current.client_secret_id
  # azurerm_client_config.current.client_secret_type = "WEBHOOK"
  # azurerm_client_config.current.client_secret_id = azurerm_client_config.current.client_secret_id
  # azurerm_client_config.current.client_secret_type = "WEBHOOK"
  # azurerm_client_config.current.client_secret_id = azurerm_client_config.current.client_secret_id
  # azurerm_client_config.current.client_secret_type = "WEBHOOK"
  # azurerm_client_config.current.client_secret_id = azurerm_client_config.current.client_secret_id
  # azurerm_client_config.current.client_secret_type = "WEBHOOK"
  # azurerm_client_config.current.client_secret_id = azurerm_client_config.current.client_secret_id
  # azurerm_client_config.current.client_secret_type = "WEBHOOK"
  # azurerm_client_config.current.client_secret_id = azurerm_client_
}

