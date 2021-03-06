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
  name     = "myTFResourceGroupResource"
  location = "westus2"
  tags     = {
    env = "dev"
  }
}

# resource block, create automation account
resource "azurerm_automation_account" "name_1" {
  name                = "tf-automation-${var.env}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  account_tier        = "Standard"
  account_replication_type = "GRS"
  account_tier_name        = "Standard"
}

