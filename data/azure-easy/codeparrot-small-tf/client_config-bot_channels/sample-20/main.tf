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

# data block, azurem client configvariable
data "azurerm_client_configvariable" "name_1" {}

# azurerm resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup_dev_dev"
  location = "westus2"
}

# create bot channels registration resource
resource "azurerm_resource_group" "name_3" {
  name     = "myTFResourceGroup_dev_dev"
  location = "westus2"
}

