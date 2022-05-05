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
#   name     = "iothub-sku"
#   location = "westus2"
# }

# create storage account
resource "azurerm_storage_account" "name_1" {
  name                     = "storage-${random_id.storage_name.hex}"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# iot security solution, assign display name and name. Use iothub id and resrouce group name and locationresource group name
# azurerm_storage_account "stor" {
#   name                     = "storage-${random_id.storage_name.hex}"
#   resource_group_name      = azurerm_resource_group.name_0.name
#   location                 = "westus2"
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
# }

# Create storage account for iot testing purposes
resource "azurerm_storage_account" "name_2" {
  name                     = "storage-${random_id.storage_name.hex}"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

