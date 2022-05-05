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

# create resource groupresource
resource "azurerm_resource_group_resource" "name_0" {
  name     = "myTFResourceGroupResource"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  sku_name = "standard"
}

# make managed disk resource
resource "azurerm_managed_disk" "name_1" {
  name                 = "myTFDisk"
  location             = "westus2"
  resource_group_name  = azurerm_resource_group.rg.name
  create_option        = "Empty"
  disk_size_gb         = "1023"
}

