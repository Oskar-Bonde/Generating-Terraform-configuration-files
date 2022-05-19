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

# make resource group
resource "azurerm_resource_group" "name_0" {
  name     = "rg-test"
  location = "westus2"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "cog-test"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "S0"
  kind                = "TextAnalytics"
}

