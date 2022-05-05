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

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# make managed disk resourceresource group
resource "azurerm_managed_disk" "name_1" {
  name                 = "mydisk"
  location             = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  disk_size_gb         = "50"
  create_option        = "Empty"
  disk_encryption_key {
    key_uri = azurerm_storage_account.test.primary_blob_endpoint
  }
}

