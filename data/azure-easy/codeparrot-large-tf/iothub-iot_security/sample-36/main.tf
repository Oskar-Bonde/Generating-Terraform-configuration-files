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

# make iothub resource group available as a resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# iot security solution resource
resource "azurerm_resource_group" "name_3" {
  name     = "myTFIOTResourceGroup"
  location = "westus2"
}

