terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create resource group with storage account
resource "azurerm_resource_group" "name_1" {
  name     = "myTFStorageGroup"
  location = "westus2"
}

# create cognitive account resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFCognitiveGroup"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_subscription" "name_3" {
  name                = "${var.subscription_id}"
  resource_group_name = "${azurerm_resource_group.name_0.name}"
  location            = "${var.location}"
}

# create bot channels registration resource
resource "azurerm_resource_group" "name_4" {
  name                = "myTFBotChannels"
  location            = "${var.location}"
}

