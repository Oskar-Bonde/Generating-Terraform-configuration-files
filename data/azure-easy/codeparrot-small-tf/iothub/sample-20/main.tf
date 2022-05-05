terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_dev"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_test"
  location = "westus2"
}

# iothub resource blockresource block
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup_dev"
  location = "westus2"
}

