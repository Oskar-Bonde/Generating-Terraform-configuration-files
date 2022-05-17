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
  resource_group_name = azurerm_resource_group.name_1.name
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size               = "Standard_A0"
  delete_os_disk_on_termination = true
  vm_size_gb         = "Standard_A1"
  vm_size_gb_policy = "Standard_A2"
  vm_size_gb_policy_value = "Standard_A3"
  vm_size_gb_policy_value_list = "Standard_A4"
  vm_size_gb_policy_value_list_list = "Standard_A5"
  vm_size_gb_policy_value_list_list_list = "Standard_A6"
  vm_size_gb_policy_value_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_list_
}

# make resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location            = "westus2"
  resource
}

# create cognitive account resource
}

