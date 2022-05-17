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

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group.
resource "azurerm_cosmosdb_account" "name_1" {
  name                = "scott"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"
  account_type        = "Standard_LRS"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" 
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name as cognitive account.
resource "azurerm_bot_channel_registration" "name_3" {
  name                = "scott"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"
  channel_registration_endpoint = data.azurerm_client_config.name_2.application_endpoint
  sku                 = "West US"
}

# resource block called bot channel direct line speech. Use name and location from bot_channels_registration. For cognitive service location and access key use cognitive account. Assign resource group name as cognitive account.
resource "azurerm_bot_channel_direct_access_key" "name_4" {
  name                = "scott"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"
  channel_access_key = data.azurerm_client_config.name_2.application_access_key
  sku                 = "West US"
}

