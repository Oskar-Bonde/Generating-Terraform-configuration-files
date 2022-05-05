# Terraform block with azure provider
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
  name     = "example-resources"
  location = "West Europe"
}

# data block, azurem client config
data "azurerm_client_config" "name_1" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_2" {
  name                = "example-bcr"
  location            = "global"
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  microsoft_app_id    = data.azurerm_client_config.name_1.client_id
}
