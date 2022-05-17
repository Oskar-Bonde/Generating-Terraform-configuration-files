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
resource "azurerm_bot_registration" "name_3" {
  name                = "botRegistration"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"
  sku                 = "West US"
  client_id           = azurerm_cosmosdb_account.name_1.id
  client_secret       = data.azurerm_client_config.name_2.secret
}

# resource block called bot channel direct line speech. Use name and location from bot_channels_registration. For cognitive service location and access key use cognitive account. Assign resource group name to get registration id
resource "azurerm_bot_channel_direct_access_key" "name_4" {
  name                = "botChannelDirectAccessKey"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_cosmosdb_account.name_1.location
  sku                 = "West US"
  client_id           = azurerm_cosmosdb_account.name_1.id
  client_secret       = data.azurerm_client_config.name_2.secret
}

