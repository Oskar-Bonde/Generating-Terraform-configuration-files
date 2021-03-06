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

# data block, azurem client config
resource "azurerm_virtual_machine" "name_1" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size               = "Standard_A0"
  delete_os_disk_on_termination = true
  vm_size               = "Standard_A1"
  vm_size               = "Standard_A2"
  vm_address_prefix       = "10.0.0.0/16"
  vm_address_prefix_count = 1
  vm_address_prefix_state_bucket = "${var.tectonic_azure_vnet_private_endpoints? module.vnet.private_endpoints : module.vnet.private_endpoints_state_bucket}"
  vm_address_prefix_state_object = "${var.tectonic_azure_vnet_private_endpoints? module.vnet.private_endpoints : module.vnet.private_endpoints_state_object}"
  vm_address_prefix_state_iops = "AES256"
  vm_address_prefix_state_object = "${var.tectonic_azure_vnet_private_endpoints? module.vnet.private_endpoints : module.vnet.private_endpoints_state_object}"
  vm_address_prefix_state_iops_to_master = "AES256"
  vm_address_prefix_state_object = "${var.tectonic_azure_vnet_private_endpoints? module.vnet.private_endpoints : module.vnet.private_endpoints_state_object}"
  vm_address_prefix_state_iops_to_worker = "AES256"
  vm_address_prefix_state_object = "${var.tectonic_azure_vnet_private_endpoints? module.vnet.private_endpoints : module.vnet.private_endpoints_state_object}"
  vm_address_prefix_state_iops_to_master_to_node = "AES256"
  vm_address_prefix_state_object = "${var.tectonic_azure_vnet_private_endpoints? module.vnet.private_endpoints : module.vnet.private_endpoints_state_object}"
  vm_address_prefix_state_iops_to_worker_to_node = "AES256"
  vm_address_prefix_state_object = "${var.tectonic_azure_vnet_private_endpoints? module.vnet.private_endpoints : module.vnet.private_endpoints_state_object}"
  vm_address_prefix_state_iops_to_master_to_node_to_master = "AES256"
  vm_address_prefix_state_object = "${var.tectonic_azure_vnet_private_endpoints? module.vnet.private_endpoints : module.vnet.private_endpoints_state
}

# create bot channels registration resource group
resource "azurerm_storage_account" "name_2" {
  name                = "myTFResourceGroup"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier   = "Standard"
  account_replication_type = "LRS"
  tags                = ["myTFResourceGroup"]
  account_replication_type = "LRS"
  tags                = ["myTFResourceGroup"]
  account_tier = "Standard"
  account_replication_type = "LRS"
}

