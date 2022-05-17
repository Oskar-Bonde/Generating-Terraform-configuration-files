terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features block
provider "azurerm" {
  features {}
}

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_lb"
  location = "westus2"
}

# iothub with sku name S1 and capacity 1. Use resource group name and location
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_lb_lb"
  location = "westus2"
}

# iot security solution, assign display name and name. Use iothub id and resrouce group name and location
resource "azurerm_storage_account" "name_2" {
 
}

