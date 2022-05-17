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
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# resource block. Create azurerm image
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

