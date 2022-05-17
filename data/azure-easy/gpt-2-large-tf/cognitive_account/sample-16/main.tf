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
  address_space       = ["10.0.0.0/16"]
  vm_size               = "Standard_A0"
  delete_os_disk_on_termination = true
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A1"
  delete_os_disk_on_termination = true
  vm_size               = "Standard_A2"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A3"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A4"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A5"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A6"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A7"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A8"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A9"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A10"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A11"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A12"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A13"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A14"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A1114"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A1214"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A1314"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A1414"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A1114"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A1214"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A1314"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A14"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size               = "Standard_A1114"
  network_interface_ids = [azurerm_network_interface.
}

# make resource group
resource "azurerm_storage_account" "name_1" {
  name                = "myTFResourceGroup"
  resource_group_name
}

# create cognitive account resource
}

