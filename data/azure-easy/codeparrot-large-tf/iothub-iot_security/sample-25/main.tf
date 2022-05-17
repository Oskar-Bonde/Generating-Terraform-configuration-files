terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# make iothub resource
resource "azurerm_storage_account" "name_2" {
  name                     = "stor"
  resource_group_name      = azurerm_resource_group.name_1.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# iot security solution resource
resource "azurerm_storage_share" "name_3" {
  name                 = "bosh"
  storage_account_name = azurerm_storage_account.name_2.name
  quota                = 50000
  depends_on            = [azurerm_resource_group.name_1]
}

