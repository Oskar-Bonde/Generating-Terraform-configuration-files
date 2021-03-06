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
  vm_size               = "Standard_A1"
  vm_size               = "Standard_A2"
  vm_address_prefix       = "10.0.0.0/16"
  vm_address_prefix_on_termination = true
  vm_address_prefix_data    = "${var.vm_address_prefix}"
  vm_address_prefix_data_path = "${var.vm_address_prefix_data_path}"
  vm_address_prefix_data_data_path_unit = "${var.vm_address_prefix_data_path_unit}"
  vm_address_prefix_data_path_unit_unit = "${var.vm_address_prefix_data_path_unit_unit}"
  vm_address_prefix_data_path_unit_unit_id = "${var.vm_address_prefix_data_path_unit_id}"
  vm_address_prefix_data_path_unit_data = "${var.vm_address_prefix_data_path_unit_data}"
  vm_address_prefix_data_path_unit_data_id = "${var.vm_address_prefix_data_path_unit_data_id}"
  vm_address_prefix_data_path_unit_data_data_path_unit = "${var.vm_address_prefix_data_path_unit_data_path_unit}"
  vm_address_prefix_data_path_unit_data_path_unit_data_id = "${var.vm_address_prefix_data_path_unit_data_id}"
  vm_address_prefix_data_path_unit_data_path_unit_data_path_unit_id = "${var.vm_address_prefix_data_path_unit_data_path_unit_data_id}"
  vm_address_prefix_data_path_unit_data_path_unit_data_path_unit_id = "${var.vm_address_prefix_data_path_unit_data_path_unit_data_path_unit_id}"
  vm_address_prefix_data_path_unit_data_path_unit_data_path_unit_id = "${var.vm_address_prefix_data_path_unit_data_path_unit_data_path_unit
}

