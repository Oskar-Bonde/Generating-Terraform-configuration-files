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
  resource_group_name = azurerm_resource_group.rg.name
  vm_size               = "Standard_A0"
  network_interface_ids = ["${azurerm_network_interface.vm.id}"]
  vm_size_gb         = "Standard_A1"
  vm_size_addresses         = ["${azurerm_virtual_machine.name_1.ipv4_address}"]
  vm_size_addresses_id  = "${azurerm_virtual_machine.name_1.ipv4_address_id}"
  vm_network_interface_ids = ["${azurerm_network_interface.vm.id}"]
  vm_network_interface_id = "${azurerm_network_interface.vm.id}"
  vm_address_pool_id = "${azurerm_public_ip.vm.id}"
  vm_address_pool_id_list = "${azurerm_public_ip.vm.id_list}"
  vm_address_pool_id_list_list = "${azurerm_public_ip.vm.id_list_list}"
  vm_address_pool_id_list_list_list = "${azurerm_public_ip.vm.id_list_list_list}"
  vm_address_pool_id_list_list_list_list_list = "${azurerm_public_ip.vm.id_list_list_list_list}"
  vm_address_pool_id_list_list_list_list_list_list_1 = "${azurerm_public_ip.vm.id_list_list_list_list_list_1}"
  vm_address_pool_id_list_list_list_list_list_2 = "${azurerm_public_ip.vm.id_list_list_list_list_list_2}"
  vm_address_pool_id_list_list_list_list_list_3 = "${azurerm_public_ip.vm.id_list_list_list_list_list_3}"
  vm_address_pool_id_list_list_list_list_list_4 = "${azurerm_public_ip.vm.id_list_list_list_list_list_4}"
  vm_address_pool_id_list_list_list_list_list_5 = "${azurerm_public_ip.vm.id_list_list_list_list_list_5}"
  vm_address_pool_id_list_list_list_list_list_6 = "${azurerm_public_ip.vm.id_list_list_list_list_list_6}"
  vm_address_pool_id_list_list_list_list_list_7 = "${azurerm_public_ip.vm.id_list_list_list_list_list_7}"
  vm_address_pool_
}

