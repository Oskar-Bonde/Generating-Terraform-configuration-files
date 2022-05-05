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

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup2"
  location = "westus2"
}

# create cognitive account resource
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup3"
  location = "westus2"
}

# data block, azurem client configresource
data "azurerm_client_config" "name_2" {}

# create storage account
resource "azurerm_storage_account" "name_3" {
  name                     = "mytfstorageaccount"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# create bot channels registration resource
resource "azurerm_resource_group" "name_4" {
  name     = "myTFResourceGroup4"
  location = "westus2"
}

# resource block called bot channel direct line speech
resource "azurerm_resource_group" "name_5" {
  name     = "myTFResourceGroup5"
  location = "westus2"
}

