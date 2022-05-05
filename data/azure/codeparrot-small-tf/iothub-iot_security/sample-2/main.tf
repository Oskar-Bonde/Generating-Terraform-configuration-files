terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features block
provider "azurerm" {
  features {}
}

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "example"
  location = "westus2"
}

# iothub with sku name S1 and capacity 1. Use resource group name and location
# azurerm_resource_group "rg" {
#   name     = "example"
#   location = "westus2"
# }

# Create storage account
resource "azurerm_storage_account" "name_1" {
  name                     = "storageaccount${lower(var.env_name)}${lower(var.verbose_name)}${random_id.storage_id.hex}"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_replication_type
  account_kind             = var.storage_account_kind
  tags                     = var.tags
}

# iot security solution, assign display name and name. Use iothub id and resrouce group name and location
# azurerm_storage_account "stor" {
#   name                     = "storageaccount${lower(var.env_name)}${lower(var.verbose_name)}${random_id.storage_id.hex}"
#   resource_group_name      = azurerm_resource_group.name_0.name
#   location                 = var.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
#   tags                     = var.tags
# }

# Create storage account
resource "azurerm_storage_account" "name_2" {
  name                     = "storageaccount${lower(var.env_name)}${lower(var.verbose_name)}${random_id.storage_id.hex}"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = var.tags
}

