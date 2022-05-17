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
  vm_address_prefix       = "Standard_A2"
  vm_address_prefix_type = "Standard_A2_C_LATERAL"
  vm_address_prefix_count = 3
  vm_address_prefix_type_max_EXTERNAL = "AES256"
  vm_address_prefix_count_max_EXTERNAL_on_termination = true
  vm_address_prefix_count_max_EXTERNAL_on_termination_list = true
  vm_address_prefix_count_max_EXTERNAL_on_termination_list_list = true
  vm_address_prefix_count_max_EXTERNAL_on_termination_list_list_list = true
  vm_address_prefix_count_max_EXTERNAL_on_termination_list_list_list_list = true
  vm_address_prefix_count_max_EXTERNAL_on_termination_list
}

# create bot channels registration resource
resource "azurerm_storage_account" "name_2" {
  name                = "myTFResourceGroup"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier             = "Standard"
  account_replication_type = "INTERNAL"
  account_replication_size = "Standard_A0"
  account_replication_type_size = "Standard_A1"
  account_replication_type_type_size_in_gb = "Standard_A2"
  account_replication_type_type_type_in_gb = "Standard_A3"
  account_replication_type_type_type_in_gb = "Standard_A4"
  account_replication_type_type_type_in_gb = "Standard_A5"
  account_replication_type_type_type_in_gb = "Standard_A6"
  account_replication_type_type_type_in_gb = "Standard_A7"
  account
}

