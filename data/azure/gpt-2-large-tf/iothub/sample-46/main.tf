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
  name     = "outbound"
  location = "westus2"
}

# iothub with sku name S1 and capacity 1. Use resource group name and location
resource "azurerm_virtual_machine" "name_1" {
  name                = "rg"
  location            = "westus2"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size               = "Standard_A0"
  delete_os_disk_on_termination = true
  vm_size_gb           = "Standard_A1"
  vm_size_gb_policy = "Standard_A2"
  vm_size_gb_policy_config {
    delete_os_disk_on_termination = true
    delete_data_disks_on_termination = true
  }
  vm_size_gb_policy_config {
    delete_data_disks_on_termination = true
    delete_data_disks_disk_type           = "gp2"
    delete_data_disks_disk_size           = "Standard_A2"
    delete_data_disks_disk_type_address = "gp2"
    delete_data_disks_disk_size_gb  = "Standard_A2"
  }
  vm_size_gb_policy_config {
    delete_data_disks_disk_type           = "gp3"
    delete_data_disks_disk_size           = "Standard_A3"
    delete_data_disks_disk_type_address = "gp3"
    delete_data_disks_disk_size_gb  = "Standard_A3"
  }
  vm_size_gb_policy_config {
    delete_data_disks_disk_type           = "gp4"
    delete_data_disks_disk_size           = "Standard_A4"
    delete_data_disks_disk_type_address = "gp4"
    delete_data_disks_disk_size_gb  = "Standard_A4"
  }
  vm_size_gb_policy_config {
    delete_data_disks_disk_type           = "gp5"
    delete_data_disks_disk_size           = "Standard_A5"
    delete_data_disks_disk_type_address = "gp5"
    delete_data_disks_disk_size_gb  = "Standard_A5"
  }
  vm_size_gb_policy_config {
    delete_data_disks_disk_type           = "gp6"
    delete_data_disks_disk_size           = "Standard_A6"
    delete_data_disks_disk_type_address = "gp6"
    delete_data_disks_disk_size_gb  = "Standard_A6"
  }
  vm_size_gb_policy_
}

