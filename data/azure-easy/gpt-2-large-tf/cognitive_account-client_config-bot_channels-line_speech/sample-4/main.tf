terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure provider

provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_policy"
  location = "westus2"
}

# create cognitive account resource
resource "azurerm_storage_account" "name_1" {
  name                = "myTFResourceGroup_storage_account"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# data block, azurem client config
resource "azurerm_storage_container" "name_2" {
  name                  = "myTFResourceGroup_storage_container"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_1.name
  container_access_type = "private"
}

# create bot channels registration resource
resource "azurerm_storage_container" "name_3" {
  name                  = "myTFResourceGroup_storage_container_linux_container"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_1.name
  container_access_type = "private"
}

# resource block called bot channel direct line speech
resource "azurerm_storage_container" "name_4" {
  name                  = "myTFResourceGroup_storage_container_linux_container_linux"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_1.name
  container_access_type = "private"
}

