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

# resource block. Create azurerm imageresource group
resource "azurerm_image_resource_group" "name_1" {
  name     = "myTFImageResourceGroup"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

