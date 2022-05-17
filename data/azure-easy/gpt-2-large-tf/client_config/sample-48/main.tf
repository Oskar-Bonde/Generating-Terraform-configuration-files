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
  name     = "myTFResourceGroup_policy"
  location = "westus2"
}

# data block, azurem client config
resource "azurerm_virtual_machine" "name_1" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  vm_size               = "Standard_A0"
  network_interface_ids = ["${azurerm_network_interface.vm.id}"]
  vm_size_gb         = "Standard_A1"
  vm_size_prefix       = "Standard_A1"
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "CoreOS"
   
}

