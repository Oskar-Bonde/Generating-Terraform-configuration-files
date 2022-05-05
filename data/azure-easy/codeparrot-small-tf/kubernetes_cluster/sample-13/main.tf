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
  name     = "myTFResourceGroup2"
  location = "westus2"
}

# kubernetes cluster resourceresource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup3"
  location = "westus2"
}

