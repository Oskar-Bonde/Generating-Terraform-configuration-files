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

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource groupresource below
resource "azurerm_resource_group" "name_1" {
  name     = "example-resources"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create storage account resource
resource "azurerm_storage_account" "name_3" {
  name                     = "example-storage"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group namevariable
resource "azurerm_channel_registration" "name_4" {
  name                = "example-channel-registration"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = "westus2"
  sku                 = "F0"
  identity_type        = "SystemAssigned"
  identity_id          = azurerm_storage_account.name_3.id
  webhook_url          = "https://example.com/webhook"

  # Azure doesn't support multiple locations. So we create a list of all locations in the first location.
  locations = [
    "westus2",
    "westus3",
  ]

  # Azure doesn't support multiple locations. So we create a list of all locations in the second location.
  locations = [
    "West US",
    "West US2",
    "West US3",
  ]

  # Azure doesn't support multiple locations. So we create a list of all locations in the third location.
  locations = [
    "West US",
    "West US2",
    "West US3",
  ]

  # Azure doesn't support multiple locations. So we create a list of all locations in the fourth location.
  locations = [
    "West US",
    "West US2",
    "West US3",
  ]

  # Azure doesn't support multiple locations. So we create a list of all locations in the fifth location.
  locations = [
    "West US",
    "West US2",
    "West US3",
  ]

  # Azure doesn't support multiple locations. So we create a list of all locations in the fifth location.
  locations = [
    "West US",
    "West US2",
    "West US3",
  ]

  # Azure doesn't support multiple locations. So we create a list of all locations in the fifth location.
  locations = [
    "West US",
    "West US2",
    "West US3",
  ]

  # Azure doesn't support multiple locations. So we create a list of all locations in the fifth location.
  locations = [
    "West US",
    "West US2",
    "West US3",
  ]

  # Azure doesn't support multiple locations. So we create a list of all locations in the third location.
 
}

