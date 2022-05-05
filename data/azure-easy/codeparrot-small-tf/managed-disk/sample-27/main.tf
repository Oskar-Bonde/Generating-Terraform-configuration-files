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
  name                 = "rg${var.prefix}ina${var.azure_location}"
  location             = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = var.azure_sku
}

# make managed disk resource group
resource "azurerm_managed_disk" "name_1" {
  name                 = "in-a-rg${var.prefix}in-a-rg${var.azure_location}"
  location             = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  disk_size_gb         = var.azure_disk_size
  create_option        = "Empty"
  disk_encryption_set_id = var.azure_disk_encryption_set_id
}

