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

# create storage account resource group
resource "azurerm_storage_account" "name_2" {
  name                     = "myTFStorageAccount"
  resource_group_name      = azurerm_resource_group.name_1.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create advanced threat protection resource group
resource "azurerm_storage_account" "name_3" {
  name                     = "myTFStorageAccount"
  resource_group_name      = azurerm_resource_group.name_1.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

