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

# data block, azurem client config
data "azurerm_client_config" "name_1" {
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name as subscription_id.
resource "azurerm_bot_channel" "name_2" {
  name                = "example-channel"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  location            = "West US"
  channel_type        = "ZMQ"
  depends_on          = ["azurerm_resource_group.name_0"]
}

