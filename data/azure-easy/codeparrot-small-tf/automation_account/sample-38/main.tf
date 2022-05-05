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

# create resource groupvariable
resource "azurerm_resource_group_variable" "name_0" {
  name     = "myTFResourceGroupVariable"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

# resource block, create automation account
resource "azurerm_automation_account" "name_1" {
  name                = "tf-test-automation-account"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  account_tier             = "Standard"
  account_replication_properties {
    name = "test"
    value = "test"
  }
}

