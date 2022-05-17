terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFRG"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFRG"
  location = "westus2"
}

# iothub resource block
resource "azurerm_resource_group" "name_2" {
  name     = "myTFROrg"
  location = "westus2"
}

