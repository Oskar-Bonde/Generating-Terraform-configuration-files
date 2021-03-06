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
  name     = "myTFResourceGrouppolicy"
  location = "westus2"
}

# create container registry resource
resource "azurerm_virtual_machine" "name_1" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  vm_size               = "Standard_A0"
  network_interface_ids = ["${azurerm_network_interface.vm.id}"]
  vm_size_gb         = "Standard_A1"
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true
  storage_image_reference {
    publisher = "CoreOS"
    offer     = "CoreOS"
    sku       = "CoreOS"
    version   = "latest"
  }
  storage_os_disk {
    name          = "myTFResourceGroup-osdisk"
    vhd_uri       = "${azurerm_storage_account.vm.primary_blob_endpoint}${azurerm_storage_container.vm.name}/myTFResourceGroup-osdisk.vhd"
    caching       = "ReadWrite"
    create_option = "FromImage"
    os_type       = "linux"
    os_type_pull_requests = "true"
    os_data_disks_on_termination = true
  }
  os_data_disks_on_termination = true
  os_data_disks_on_termination_join = ["${azurerm_storage_container.vm.name}"]
  os_data_disks_on_termination_join_allocation = "dynamic"
  os_data_disks_on_termination_seconds  = "1"
  os_data_disks_on_termination_seconds_join = ["${azurerm_storage_container.vm.name}"]
  os_data_disks_on_termination_seconds_join_allocation = "dynamic"
  os_data_disks_on_termination_seconds_seconds_join_allocation_path = "/dev/null"
  os_data_disks_on_termination_seconds_seconds_join_period = "/dev/null"
  os_data_disks_on_termination_seconds_seconds_join_token  = "true"
  os_data_disks_on_termination_seconds_seconds_join_token_allocation = "true"
  os_data_disks_on_termination_seconds_seconds_join_token_path = "/dev/null"
  os_data_disks_on_termination_seconds_seconds_join_token_seconds_join_token_seconds_join = "true"
  os_data_disks_on_termination_seconds_seconds_join_token_seconds_join_token_seconds_join_token_seconds_join = "true"
  os_data_disks_on_termination_seconds_seconds_join_token_seconds_join_token_seconds_join_token_seconds_join_token_seconds_join = "true"
  os_data_disks_on_termination_seconds_seconds_join_token_seconds_join_token
}

