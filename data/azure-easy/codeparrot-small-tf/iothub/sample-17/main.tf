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

# create resource groupresource
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_dev"
  location = "westus2"
}

# iothub resource block
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_iothub"
  location = "westus2"
}
