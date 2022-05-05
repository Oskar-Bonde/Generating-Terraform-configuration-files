terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure
provider "azurerm" {
  features {}
}

# create a resource group
resource "azurerm_resource_group" "name_0" {
  name     = "rg-demo-terraform"
  location = "westeurope"
}

