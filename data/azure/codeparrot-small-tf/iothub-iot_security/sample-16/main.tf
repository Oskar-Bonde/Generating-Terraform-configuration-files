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

# iothub with sku name S1 and capacity 1. Use resource group name and locationresource group name
resource "azurerm_resource_group" "name_1" {
  name     = "example"
  location = "westus2"
}

# iot security solution, assign display name and name. Use iothub id and resrouce group name and locationvariable
# azurerm_resource_group "iothub" {
#   name = "example"
#   location = "westus2"
# }

# Create storage account
resource "azurerm_storage_account" "name_2" {
  name                     = "storage${random_id.storage_name.hex}"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = azurerm_resource_group.name_0.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    env = "dev"
  }
}

