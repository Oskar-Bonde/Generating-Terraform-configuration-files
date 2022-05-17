terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure provider

provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup-azure-resource-group"
  location = "westus2"
}

# data block, azurem client config
resource "azurerm_virtual_machine" "name_1" {
  name                = "myTFResourceGroup-rg"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size               = "Standard_A0"
  delete_os_disk_on_termination = true
  vm_size_gb           = "Standard_A1"
  vm_size_gb_policy = "Standard_A2"
  vm_size_gb_policy_config {
    delete_os_disk_on_termination = true
    delete_data_disks_on_termination = true
    delete_data_disks_on_termination_join = ["${azurerm_storage_account.rg.id}"]
  }
}

