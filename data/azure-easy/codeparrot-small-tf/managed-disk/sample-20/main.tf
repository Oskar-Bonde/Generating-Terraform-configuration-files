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

# make managed disk resource
resource "azurerm_managed_disk" "name_2" {
  name                 = "mytfdisk"
  location             = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  disk_size_gb         = "1023"
  create_option        = "Empty"
  disk_encryption_set_id = azurerm_managed_disk.name_2.id
}

