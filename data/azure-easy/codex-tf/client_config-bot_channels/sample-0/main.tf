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
  name     = "${var.resource_group_name}"
  location = "${var.location}"
}

# data block, azurem client config
data "azurerm_client_config" "name_1" {}

# create storage account
resource "azurerm_storage_account" "name_2" {
  name                     = "${var.storage_account_name}"
  resource_group_name      = "${azurerm_resource_group.name_0.name}"
  location                 = "${azurerm_resource_group.name_0.location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "${var.bot_name}"
  location            = "${azurerm_resource_group.name_0.location}"
  resource_group_name = "${azurerm_resource_group.name_0.name}"
  sku                 = "F0"
  kind                = "sdk"
  microsoft_app_id    = "${var.bot_app_id}"
  microsoft_app_password = "${var.bot_app_password}"
  endpoint            = "https://${var.bot_name}.azurewebsites.net/api/messages"
  tags                = {
    environment = "Terraform Demo"
  }
}

