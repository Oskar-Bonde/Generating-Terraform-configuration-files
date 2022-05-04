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
resource "azurerm_resource_group" "name_3" {
  name     = "example-resources"
  location = "westus2"
}

# data block, azurem client configresource, azurerm storage account
data "azurerm_client_config" "name_1" {}

# create storage account for example resource
resource "azurerm_storage_account" "name_2" {
  name                     = "example-storage-account"
  resource_group_name      = azurerm_resource_group.name_3.name
  location                 = azurerm_resource_group.name_3.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name as name
resource "azurerm_resource_group" "name_3" {
  name     = "example-channel-registration"
  location = "global"
  resource_group_name = azurerm_resource_group.name_3.name
}

