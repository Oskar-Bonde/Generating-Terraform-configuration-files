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
}

# data block, azurem client config
data "azurerm_client_config" "name_2" 
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_bot_registration" "name_3" {
  name                = "bot"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"
  sku                 = "global"
}

# resource block called bot channel direct line speech. Use name and location from bot_channels_registration. For cognitive service location and access key use cognitive account. Assign resource group name
resource "azurerm_bot_channel_access" "name_4" {
  name                = "bot_channel_access"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.name_0.location
  sku                 = "global"
  access_key          = data.azurerm_client_config.name_2.access_key
  secret_name        = azurerm_client_config.current.secret_name
}
