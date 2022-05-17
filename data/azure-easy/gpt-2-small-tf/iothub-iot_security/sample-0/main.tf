terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure provider
provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# make iothub resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# iot security solution resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

