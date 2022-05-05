terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create cognitive account resourceresource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# data block, azurem client configresource group
data "azurerm_client_config" "name_3" {}

# create storage account resource group
resource "azurerm_storage_account" "name_4" {
  name                     = "mytfstorageaccount"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create bot channels registration resource
resource "azurerm_resource_group" "name_5" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# resource block called bot channel direct line speechresource
resource "azurerm_resource_group" "name_6" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

