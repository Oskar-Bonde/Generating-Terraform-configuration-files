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
  name                = "rg"
  location            = "westus2"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  address_space       = ["10.0.0.0/16"]
  vm_size               = "Standard_A0"
  delete_os_disk_on_termination = true
  vm_disk_type           = "pd-ssd"
  vm_disk_size           = "Standard_A1"
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_disk_type           = "pd-ssd"
  vm_disk_size           = "Standard_A2"
  vm_disk_type           = "pd-ssd"
  vm_disk_size           = "Standard_A3"
  vm_network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_address_prefix       = "10.0.0.0/24"
  vm_address_prefix_count = 3
  vm_address_prefix_state     = "AES256"
  vm_address_prefix_any = "AES256"
  vm_address_prefix_sku = "AES256"
  vm_address_prefix_sku_count = 3
  vm_address_prefix_sku_state     = "AES256"
  vm_address_prefix_sku_any = "AES256"
  vm_address_prefix_sku_count = 3
  vm_address_prefix_sku_state     = "AES256"
  vm_address_prefix_sku_any = "AES256"
  vm_address_prefix_sku_count = 3
  vm_address_prefix_sku_state     = "AES256"
  vm_address_prefix_sku_any = "AES256"
  vm_address_prefix_sku_count = 3
  vm_address_prefix_sku_state     = "AES256"
  vm_address_prefix_sku_any = "AES256"
  vm_address_prefix_sku_count = 3
  vm_address_prefix_sku_state     = "AES256"
  vm_address_prefix_sku_any = "AES256"
  vm_address_prefix_sku_count = 3
  vm_address_prefix_sku_state     = "AES256"
  vm_address_prefix_sku_count = 3
  vm_address_prefix_sku_state     = "AES256"
  vm_address_prefix_sku_count = 3
  vm_address_prefix_sku_
}

