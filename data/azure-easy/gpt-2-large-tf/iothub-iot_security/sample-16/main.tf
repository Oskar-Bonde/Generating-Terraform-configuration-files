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
  name     = "myTFResourceGroup-user"
  location = "westus2"
}

# make iothub resource
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup-password"
  location = "westus2"
}

# iot security solution resource
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup-network"
  location = "westus2"
}
