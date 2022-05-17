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

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "myresources"
  location = "westus2"
}

# create container registry resource. Assign resource group name and location. Set sku to premium and admin enabled to false. Inside a georeplications block, set location to East US and enable zone reduncancy
resource "azurerm_virtual_machine" "name_1" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size               = "Standard_A0"
  delete_os_disk_on_termination = true
  vm_size_gb         = "Standard_A1"
  vm_size_gb_policy = "Standard_A2"
  vm_size_gb_policy_config {
    delete_os_disk_on_termination = true
    delete_data_disks_on_termination = true
    delete_data_disks_on_termination_join = ["${azurerm_storage_account.rg.id}"]
  }
  vm_size_gb_policy_config {
    delete_data_disks_on_termination = true
    delete_data_disks_on_termination_join = ["${azurerm_storage_container.rg.id}"]
  }
  vm_size_gb_policy_config {
    delete_data_disks_on_termination = true
    delete_data_disks_on_termination_join = ["${azurerm_storage_container.rg.id}"]
  }
  vm_size_gb_policy_config {
    delete_data_disks_on_termination = true
    delete_data_disks_on_termination_join = ["${azurerm_storage_container.rg.id}"]
  }
  vm_size_gb_policy_config {
    delete_data_disks_on_termination = true
    delete_data_disks_on_termination_join = ["${azurerm_storage_container.rg.id}"]
  }
  vm_size_gb_policy_config {
    delete_data_disks_on_termination = true
    delete_data_disks_on_termination_join = ["${azurerm_storage_container.rg.id}"]
  }
  vm_size_gb_policy_config {
    delete_data_disks_on_termination = true
    delete_data_disks_on_termination_join = ["${azurerm_storage_container.rg.id}"]
  }
  vm_size_gb_policy_config {
    delete_data_disks_on_termination = true
    delete_data_disks_on_termination_join = ["${azurerm_storage_container.rg.id}"]
  }
  vm_size_gb_policy_config {
    delete_data_disks_on_termination = true
   
}

