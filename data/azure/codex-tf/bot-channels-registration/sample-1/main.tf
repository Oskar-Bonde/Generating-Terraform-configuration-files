terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure, empty features block
provider "azurerm" {
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "example-resources"
  location = "West Europe"
}

# data block, azurem client config
data "azurerm_client_config" "name_1" {}

# create storage account, use name example-storage and set location to West Europe
resource "azurerm_storage_account" "name_2" {
  name                     = "example-storage"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = azurerm_resource_group.name_0.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_bot_channels_registration" "name_3" {
  name                 = "example"
  location             = "global"
  sku_name             = "F0"
  microsoft_app_id     = data.azurerm_client_config.name_1.client_id
  resource_group_name  = azurerm_resource_group.name_0.name
  storage_account_name = azurerm_storage_account.name_2.name
}
