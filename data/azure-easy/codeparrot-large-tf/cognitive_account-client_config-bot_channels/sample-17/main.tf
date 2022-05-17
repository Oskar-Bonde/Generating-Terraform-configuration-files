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
  name     = "myTFRG"
  location = "westus2"
}

# create cognitive account resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFCOGNItiveAccount"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_subscription" "name_3" {}

# create storage account
resource "azurerm_storage_account" "name_4" {
  name                     = "bosh"
  resource_group_name      = azurerm_resource_group.name_1.name
  location                 = data.azurerm_resource_group.name_1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create bot channels registration resource
}

