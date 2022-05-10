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
  name     = "myTFResourceGroup"
  location = "westus2"
}

# resource block. Create azurerm imageresourcegroup
resource "azurerm_image_resource_group" "name_1" {
  name     = "myTFImageResourceGroup"
  location = "westus2"
}
