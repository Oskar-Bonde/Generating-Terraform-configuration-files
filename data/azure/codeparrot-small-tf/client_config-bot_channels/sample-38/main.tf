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

# data block, azurem client config
data "azurerm_client_config" "name_1" {}

# create storage account
resource "azurerm_storage_account" "name_2" {
  name                     = "myazurestorageaccount"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "test"
  }
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_channel_registration" "name_3" {
  name                = "mychannelregistration"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = "westus2"
  sku                 = "Standard"
  client_id          = data.azurerm_client_config.name_1.client_id
  client_secret      = data.azurerm_client_config.name_1.client_secret
  custom_data          = base64encode(data.azurerm_client_config.name_1.client_config.0.data)
}

