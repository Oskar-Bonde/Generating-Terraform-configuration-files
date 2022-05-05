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

# create cognitive account resource
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# data block, azurem client configvariable
data "azurerm_client_config" "name_2" {}

# create storage account resource
resource "azurerm_storage_account" "name_3" {
  name                     = "mytfstorageaccount"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags {
    environment = "test"
  }
}

# create bot channels registration resource
resource "azurerm_channel_registration" "name_4" {
  channel_id                 = azurerm_channel_registration.name_4.id
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags {
    environment = "test"
  }
}

