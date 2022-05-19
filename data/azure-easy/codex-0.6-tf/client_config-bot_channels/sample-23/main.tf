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
  name     = "myResourceGroup"
  location = "westus"
}

# data block, azurem client config
data "azurerm_client_config" "name_1" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_2" {
  name                = "myBot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"

  microsoft_app_id = data.azurerm_client_config.name_1.object_id
  microsoft_app_password = "myPassword"
}

