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

# make resource group public
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroupPublic"
  location = "westus2"
}

# create cognitive account resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroupCognitive"
  location = "westus2"
}

