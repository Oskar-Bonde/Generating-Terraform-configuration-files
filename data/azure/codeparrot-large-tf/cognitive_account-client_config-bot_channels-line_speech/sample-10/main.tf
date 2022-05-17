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
  name                = "cosmosdbaccount"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" 
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name to get registration id
resource "azurerm_bot_channel" "name_3" {
  name                = "botchannel"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"
  channel_name          = "bot-channel"
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "West US"
}

# resource block called bot channel direct line speech. Use name and location from bot_channels_registration. For cognitive service location and access key use cognitive account. Assign resource group name to get registration id
resource "azurerm_bot_channel_assignment" "name_4" {
  channel_name  = azurerm_bot_channel.name_3.name
  resource_group_name = azurerm_resource_group.rg.name
  location        = azurerm_bot_channel.name_3.location
  sku             = azurerm_bot_channel.name_3.sku
  identity_namespace = azurerm_bot_channel.name_3.identity_namespace
}

