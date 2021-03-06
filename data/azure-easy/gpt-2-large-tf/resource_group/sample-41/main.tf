terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure

resource "azurerm_virtual_machine" "name_0" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  vm_size               = "Standard_D1"
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size_gb         = "Standard_D1"
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true
  delete_data_disks_on_termination_list = true
  vm_address_prefix       = "myTFResourceGroup"
  vm_address_prefix_list = "myTFResourceGroup"
  vm_address_prefix_list_type = "Standard_D1"
  vm_address_prefix_list_data_disks_on_termination = true
  vm_address_prefix_list_data_disks_on_termination_list = true
  vm_address_prefix_list_data_disks_on_termination_list_type = "Standard_D1"
  vm_address_prefix_list_data_disks_on_termination_list_data_disks_on_termination_list_type = "Standard_D1"
  vm_address_prefix_list_data_disks_on_termination_list_data_disks_on_termination_list_type = "Standard_D1"
  vm_address_prefix_list_data_disks_on_termination_list_data_disks_on_termination_list_type = "Standard_D1"
  vm_address_prefix_list_data_disks_on_termination_list_data_disks_on_termination_list_type = "Standard_D1"
  vm_address_prefix_list_data_disks_on_termination_list_data_disks_on_termination_list_type = "Standard_D1"
  vm_address_prefix_list_data_disks_on_termination_list_data_disks_on_termination_list_type = "Standard_D1"
  vm_address_prefix_list_data_disks_on_termination_list_data_disks_on_termination_list_type = "Standard_D1"
  vm_address_prefix_list_data_disks_on_termination_list_data_disks_on_termination_list_type = "Standard_D1"
  vm_address_prefix_list_data_disks_on_termination_list_data_disks_on_termination_list_type = "Standard_D1"
  vm_address_prefix_list_data_disks_on_termination_list_data_disks_on_termination_list_type = "Standard_D1"
  vm_address_prefix_list_data_disks_on_termination_list_data_disks_on_termination_list_type = "Standard_D1"
  vm_address_prefix_list_data_disks_on_termination_list_data_disks_on_termination_list_type = "Standard_D1"
  vm_address_prefix_list_data_disks_on_termination_list_data_disks_on_termination_list_type = "Standard_D1"
  vm_address_prefix_list_data_disks_on_termination_list_data_disks_on_termination_list_type = "Standard_D1"
  vm_address_prefix_list_data_disks_on_termination_list_data_disks_on_termination_list_type = "Standard_D1"
  vm_address_prefix_list_data_disks_on
}

# create a resource group
resource "azurerm_virtual_machine_extension" "name_1" {
  name                = "myTFResourceGroup"
  location            = "westus2
}

