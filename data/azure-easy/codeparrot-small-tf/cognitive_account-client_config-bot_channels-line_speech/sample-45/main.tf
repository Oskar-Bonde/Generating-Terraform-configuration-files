terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm
provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_dev"
  location = "westus2"
}

# create cognitive account resourceresource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_dev_dev"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create storage account resource group
resource "azurerm_resource_group" "name_3" {
  name     = "myTFStorageAccount"
  location = "westus2"
}

# create bot channels registration resource
resource "azurerm_resource_group" "name_4" {
  name     = "myTFBotChannelRegistration"
  location = "westus2"
}

# resource block called bot channel direct line speechresource
resource "azurerm_resource_group" "name_5" {
  name     = "myTFBotChannelRegistration_dev"
  location = "westus2"
}

