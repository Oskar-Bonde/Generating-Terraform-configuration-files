terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create cognitive account resourcevariable
resource "azurerm_resource_group" "name_3" {
  name     = "myTFRG"
  location = "westus2"
}

# data block, azurem client config
resource "azurerm_resource_group" "name_3" {
  name     = "myTFRG"
  location = "westus2"
}

# create bot channels registration resource
resource "azurerm_resource_group" "name_4" {
  name     = "myTFRG_bot_channels"
  location = "westus2"
}

