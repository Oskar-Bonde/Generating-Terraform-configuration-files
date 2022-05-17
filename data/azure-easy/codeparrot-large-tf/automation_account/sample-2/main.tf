terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# resource block, create automation account
resource "azurerm_automation_account" "name_2" {
  name                = "myTFAutomationAccount"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_1.name
  administrator_login      = "myTFAutomationAccount"

  tags = {
    environment = "test"
  }
}

