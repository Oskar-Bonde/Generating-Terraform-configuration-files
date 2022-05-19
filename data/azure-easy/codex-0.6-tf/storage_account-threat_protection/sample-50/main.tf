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

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "rg-test"
  location = "westus"
}

# create storage account resource
resource "azurerm_storage_account" "name_2" {
  name                     = "storageaccounttest"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = azurerm_resource_group.name_0.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create advanced threat protection resource
resource "azurerm_storage_account" "name_2" {
  name                     = "storageaccounttest"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = azurerm_resource_group.name_0.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  enable_advanced_threat_protection = true
}

