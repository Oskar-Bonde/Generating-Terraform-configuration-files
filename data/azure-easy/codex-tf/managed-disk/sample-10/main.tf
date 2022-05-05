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
  name     = "${var.resource_group_name}"
  location = "${var.location}"
}

# make managed disk resource
resource "azurerm_managed_disk" "name_1" {
  name                 = "${var.disk_name}"
  location             = "${azurerm_resource_group.name_0.location}"
  resource_group_name  = "${azurerm_resource_group.name_0.name}"
  storage_account_type = "${var.storage_account_type}"
  create_option        = "${var.create_option}"
  disk_size_gb         = "${var.disk_size_gb}"

  source_uri = "${var.source_uri}"
}

