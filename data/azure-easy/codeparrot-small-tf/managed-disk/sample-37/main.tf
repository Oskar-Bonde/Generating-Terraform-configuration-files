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
  value     = "myTFResourceGroupVariable"
}

# make managed disk resourceresource group variable accessible
resource "azurerm_managed_disk" "name_1" {
  name                 = "myTFManagedDisk"
  location             = "westus2"
  resource_group_name  = azurerm_resource_group.rg.name
  disk_size_gb         = "1023"
  create_option        = "Empty"
  disk_encryption_set_id = azurerm_managed_disk.name_1.id
}

