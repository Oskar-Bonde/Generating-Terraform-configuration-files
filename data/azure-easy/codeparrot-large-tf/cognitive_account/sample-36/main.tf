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

# make resource group 
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create cognitive account resourcevariable
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

