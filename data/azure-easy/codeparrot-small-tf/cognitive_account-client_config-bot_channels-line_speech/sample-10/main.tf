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
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create cognitive account resourcevariable
resource "azurerm_resource_group" "name_1" {
  name     = "azureTFResourceGroup"
  location = "westus2"
}

# data block, azurem client configvariable
data "azurerm_client_config" "name_2" {}

# create storage account resource variable
resource "azurerm_storage_account" "name_3" {
  name                     = "azuretest"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# create bot channels registration resource
resource "azurerm_resource_group" "name_4" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# resource block called bot channel direct line speechresource
resource "azurerm_resource_group" "name_5" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

