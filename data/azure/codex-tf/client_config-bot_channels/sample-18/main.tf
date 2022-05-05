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
  location = "West Europe"
}

# data block, azurem client config
data "azurerm_client_config" "name_1" {}

# output block, print subscription id
output "name_2" {
  value = data.azurerm_client_config.name_1.subscription_id
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_bot_channels_registration" "name_3" {
  location            = "global"
  sku                 = "F0"
  microsoft_app_id    = data.azurerm_client_config.name_1.object_id
  resource_group_name = azurerm_resource_group.name_0.name
  name                = "example"
}

