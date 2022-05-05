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
}

# create storage account resource
resource "azurerm_storage_account" "name_1" {
  name                     = "mytfstorageaccount"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# create advanced threat protection resourcevariable
resource "azurerm_storage_account_key" "name_2" {
  name                 = "mytfkey"
  resource_group_name  = azurerm_resource_group.rg.name
  location             = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

