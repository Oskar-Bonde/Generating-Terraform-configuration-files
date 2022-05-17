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
  name     = "myTFRG"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_subscription" "name_3" {}

# create storage account
resource "azurerm_storage_account" "name_4" {
  name                     = "${var.env_short_name}${data.azurerm_subscription.name_3.name}"
  resource_group_name      = "${azurerm_resource_group.name_1.name}"
  location                 = "${var.location}"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  account_kind             = "StorageV2"
  tags {
    environment = "test"
  }
}

# create bot channels registration resource group
resource "azurerm_resource_group" "name_6" {
  name     = "myTFBotsRG"
  location = "westus2"
}

# resource block called bot channel direct line speech
resource "azurerm_resource_group" "name_6" {
  name     = "myTFBotChannelRT"
  location = "westus2"
}

