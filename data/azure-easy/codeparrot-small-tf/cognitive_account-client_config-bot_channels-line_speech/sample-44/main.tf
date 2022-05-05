terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_dev"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_test"
  location = "westus2"
}

# create cognitive account resource
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup_dev_dev"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_client_config" "name_3" {}

# create storage account
resource "azurerm_storage_account" "name_4" {
  name                     = "mytfstorageaccount"
  resource_group_name      = azurerm_resource_group.name_1.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "test"
  }
}

# create bot channels registration resource
resource "azurerm_resource_group" "name_5" {
  name     = "mytfrgdevgroup"
  location = "westus2"
}

# resource block called bot channel direct line speech
resource "azurerm_resource_group" "name_6" {
  name     = "mytfrgdevgroup_dev_dev_bot_line"
  location = "westus2"
}

