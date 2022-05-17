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

# create cognitive account resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFCOG"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_client_config" "name_3" {}

# create storage account
resource "azurerm_storage_account" "name_4" {
  name                     = "${var.env_short_name}${data.azurerm_client_config.name_3.name}"
  resource_group_name      = "${azurerm_resource_group.name_1.name}"
  location                 = "${var.location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create bot channels registration resource group
resource "azurerm_resource_group" "name_5" {
  name     = "myTFBotChannels"
  location = "westus2"
}

