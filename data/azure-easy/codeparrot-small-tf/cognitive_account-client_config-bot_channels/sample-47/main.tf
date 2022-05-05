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

# create cognitive account resourceresource group
resource "azurerm_resource_group" "name_1" {
  name     = "testRG"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create storage account resource group
resource "azurerm_resource_group" "name_3" {
  name     = "testRG"
  location = "westus2"
}

# create bot channels registration resourcevariable
resource "azurerm_resource_group" "name_4" {
  name     = "testRG"
  location = "westus2"
}

