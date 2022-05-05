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

# create resource groupresource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroupRG"
  location = "westus2"
}

# resource block, create automation account
resource "azurerm_automation_account" "name_1" {
  name                = "tf-automation-account"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier        = "Standard"
  account_replication_type = "GRS"
  account_tier_name        = "Standard"
}

