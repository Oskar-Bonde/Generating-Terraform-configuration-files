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
  name     = "myTFResourceGroup_rg"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

# create container registry resourceresource
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_rg_cb"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

