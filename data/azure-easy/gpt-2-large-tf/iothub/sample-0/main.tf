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

# iothub resource block
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
  vm_address_prefix_count = 1
  vm_address_prefix_type = "Standard_A2"
  vm_address_prefix_data_type = "Standard_A2"
  vm_address_prefix_data_size = "Standard_A2"
  vm_address_prefix_data_type = "Standard_A2"
  vm_address_prefix_data_size_gb = "Standard_A2"
  vm_address_prefix_data_type_data = "Standard_A2"
  vm_address_prefix_data_size_gb = "Standard_A2"
  vm_address_prefix_data_type_data_size_gb = "Standard_A2"
  vm_address_prefix_data_type_data_size_gb = "Standard_A2"
  vm_address_prefix_data_type_data_size_gb = "Standard_A2"
  vm_address_prefix_data_type_data_size_gb = "Standard_A2"
  vm_address_prefix_data_type_data_size_gb = "Standard_A2"
  vm_address_prefix_data_type_data_size_gb = "Standard_A2"
  vm_address_prefix_data_type_data_size_gb = "Standard_A2"
  vm_address_prefix_data_type_data_size_gb = "Standard_A2"
  vm_address_prefix_data_type_data_size_gb = "Standard_A2"
  vm_address_prefix_data_type_data_size_gb = "Standard_A2"
  vm_address_prefix_data_type_data_size_gb = "Standard_A2"
  vm_address_prefix_data_type_data_size_gb = "Standard_A2"
  vm_address_prefix_data_type_data_size_gb = "Standard_A2"
  vm_address_prefix_data_type_data_size_gb = "Standard_A2"
  vm_address_prefix_data_type_data_size_gb = "Standard_A2"
  vm_address_prefix_data_type_data_size_gb = "Standard_A2"
  vm_address_prefix_data_type_data_size_gb = "Standard_A2"
  vm_address_prefix_data_type_data_size_gb = "Standard_A2"
 
}

