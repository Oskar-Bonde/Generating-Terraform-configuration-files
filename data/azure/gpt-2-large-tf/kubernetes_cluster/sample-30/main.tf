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

# kubernetes cluster. Use dns prefix exampleaks1, create a default node pool with 1 node count and vm size Standard_D2_v2. Make identity SystemAssigned
resource "azurerm_virtual_machine" "name_1" {
  name                = "vm"
  location            = "westus2"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  network_interface_ids = ["${azurerm_network_interface.vm.id}"]
  vm_size               = "Standard_D2_v2"
  delete_os_disk_on_termination = true
  vm_disk_type           = "pd-ssd"
  vm_disk_size           = "Standard_D2_v2"
  vm_disk_type_address = "Standard_D2_v2"
  vm_disk_type_address_allocation = "static"
  vm_disk_size_gb       = "Standard_D2_v2"
  vm_disk_type            = "Standard_D2_v2"
  vm_disk_type_address       = "Standard_D2_v2"
  vm_disk_type_address_allocation = "static"
  vm_disk_size_gb       = "Standard_D2_v2"
  vm_disk_type            = "Standard_D2_v2"
  vm_disk_type_address       = "Standard_D2_v2"
  vm_disk_type_address_allocation = "static"
  vm_disk_size_gb       = "Standard_D2_v2"
  vm_disk_type            = "Standard_D2_v2"
  vm_disk_type_address       = "Standard_D2_v2"
  vm_disk_type_address_allocation = "static"
  vm_disk_size_gb       = "Standard_D2_v2"
  vm_disk_type            = "Standard_D2_v2"
  vm_disk_type_address       = "Standard_D2_v2"
  vm_disk_type_address_allocation = "static"
  vm_disk_size_gb       = "Standard_D2_v2"
  vm_disk_type            = "Standard_D2_v2"
  vm_disk_type_address       = "Standard_D2_v2"
  vm_disk_type_address_allocation = "static"
  vm_disk_size_gb       = "Standard_D2_v2"
  vm_disk_type            = "Standard_D2_v2"
  vm_disk_type_address       = "Standard_D2_v2"
  vm_disk_type_address_allocation = "static"
  vm_disk_size_gb       = "Standard_D2_v2"
  vm_disk_type            = "Standard
}

