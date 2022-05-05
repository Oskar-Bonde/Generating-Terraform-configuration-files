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

# make resource groupresource accessible
resource "azurerm_resource_group_access" "name_0" {
  name = azurerm_resource_group.rg.name
}

# create cognitive account resource
resource "azurerm_resource_group" "name_1" {
  name     = "testTerraformGroup"
  location = "westus2"
}

