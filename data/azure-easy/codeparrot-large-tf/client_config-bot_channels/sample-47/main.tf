terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
}

# create bot channels registration resource
resource "azurerm_bot_channel" "name_3" {
  name                = "myTFTopicChannel"
  resource_group_name = "${azurerm_resource_group.name_1.name}"
  location            = "westus"
  channel_role        = "${var.channel_role}"
}

