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
  name     = "myTFResourceGroup"
  location = "westeurope"
}

# iothub with sku name S1 and capacity 1. Use resource group name and location westus2
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westeurope"
}

# iot security solution, assign display name and name. Use iothub id and resrouce group name and location westus2
resource "azurerm_security_group" "name_2" {
  name                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
}

