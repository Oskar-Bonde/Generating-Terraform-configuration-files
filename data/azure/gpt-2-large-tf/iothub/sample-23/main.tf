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
  storage_image_reference {
    publisher = "CoreOS"
    offer     = "CoreOS"
    sku       = "CoreOS"
  }
  storage_os_disk {
    name          = "osdisk"
    vhd_uri       = "${azurerm_storage_account.rg.primary_blob_endpoint}${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}/${azurerm
}

