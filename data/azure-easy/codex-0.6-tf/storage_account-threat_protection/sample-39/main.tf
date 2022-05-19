terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure
provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myResourceGroup"
  location = "westus"
}

# create storage account resource
resource "azurerm_storage_account" "name_1" {
  name                     = "mystorageaccount"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = azurerm_resource_group.name_0.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create advanced threat protection resource
resource "azurerm_storage_account_network_rules" "name_2" {
  resource_group_name = azurerm_resource_group.name_0.name
  storage_account_name = azurerm_storage_account.name_1.name
  default_action = "Deny"
  ip_rules = [
    "8.8.8.8",
    "8.8.4.4",
  ]
  virtual_network_subnet_ids = [
    "subnet-id-1",
    "subnet-id-2",
  ]
}

