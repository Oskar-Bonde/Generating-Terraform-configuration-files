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
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create cognitive account resource
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# data block, azurem client configvariable
data "azurerm_client_configvariable" "name_2" {}

# create storage account resource
resource "azurerm_resource_group" "name_3" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create bot channels registration resource
resource "azurerm_resource_group" "name_4" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

