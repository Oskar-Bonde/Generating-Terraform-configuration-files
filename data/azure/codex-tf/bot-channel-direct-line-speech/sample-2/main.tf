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

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group
resource "azurerm_cognitive_account" "name_2" {
  name                = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "SpeechServices"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_cognitive_account" "name_2" {
  name                = azurerm_cognitive_account.name_1.name
  resource_group_name = azurerm_cognitive_account.name_1.resource_group_name
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "example"
  location            = "global"
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "F0"
  microsoft_app_id    = data.azurerm_cognitive_account.name_2.client_id
}

# resource block called bot channel direct line speech. Use name and location from bot_channels_registration. For cognitive service location and access key use cognitive account. Assign resource group name
resource "azurerm_bot_channel_directline_speech" "name_4" {
  name                = azurerm_bot_channels_registration.name_3.name
  location            = azurerm_bot_channels_registration.name_3.location
  resource_group_name = azurerm_resource_group.name_0.name
  cognitive_service_location = azurerm_cognitive_account.name_1.location
  cognitive_service_key      = azurerm_cognitive_account.name_1.primary_access_key
}

