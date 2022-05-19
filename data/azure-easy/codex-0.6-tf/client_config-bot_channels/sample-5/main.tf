terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure
provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "my-rg"
  location = "eastus"
}

# data block, azurem client config
data "azurerm_client_config" "name_1" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_2" {
  name                = "my-bot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"

  microsoft_app_id = data.azurerm_client_config.name_1.object_id
  developer_app_insights_key = "00000000-0000-0000-0000-000000000000"
  developer_app_insights_api_key = "00000000-0000-0000-0000-000000000000"

  tags = {
    environment = "staging"
  }
}

