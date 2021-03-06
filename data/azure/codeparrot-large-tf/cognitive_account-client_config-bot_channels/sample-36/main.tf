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
  location = "westus"
}

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group
resource "azurerm_cosmosdb_account" "name_1" {
  name                = "scott"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"
  account_tier         = "Standard"
  account_replication_type = "GRS"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" 
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name to get registration id
resource "azurerm_bot_channel_registration" "name_3" {
  name                = "bot_channel_registration"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"
  channel_registration_endpoint = data.azurerm_client_config.name_2.application_endpoint
  registration_id     = "6bc7b7a-d4c3-4e5a-9e5e-0e3e7c3d2c4"
  client_id           = azurerm_cosmosdb_account.name_1.id
}

