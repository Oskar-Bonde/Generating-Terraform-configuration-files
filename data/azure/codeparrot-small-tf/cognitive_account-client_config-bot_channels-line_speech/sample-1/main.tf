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

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group
resource "azurerm_storage_account" "name_4" {
  name                     = "example-storage-account"
  resource_group_name      = azurerm_resource_group.name_3.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" 
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name as name
resource "azurerm_resource_group" "name_3" {
  name     = "example-channel-registration"
  location = "global"
  resource_group_name = azurerm_resource_group.name_3.name
}

# resource block called bot channel direct line speech. Use name and location from bot_channels_registration. For cognitive service location and access key use cognitive account. Assign resource group name as name
resource "azurerm_storage_account" "name_4" {
  name                     = "example-storage-account"
  resource_group_name      = azurerm_resource_group.name_3.name
  location                 = "us-west-2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

