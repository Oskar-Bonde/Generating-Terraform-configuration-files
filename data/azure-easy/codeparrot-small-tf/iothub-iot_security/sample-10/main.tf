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
  name     = "myTFResourceGroup_test"
  location = "westus2"
}

# make iothub resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_iothub"
  location = "westus2"
}

# iot security solution resource
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup_iothub_ssg"
  location = "westus2"
}

