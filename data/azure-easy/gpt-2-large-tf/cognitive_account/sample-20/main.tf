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
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size               = "Standard_A0"
  delete_os_disk_on_termination = true
  vm_size_gb          = "Standard_A1"
  vm_size_gb_policy = "Standard_A2"
  vm_size_gb_policy_tables = "Standard_A3"
  vm_size_gb_policy_tables_tables = "Standard_A4"
  vm_size_gb_policy_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_tables_
}

# make resource group
resource "azurerm_storage_account" "name_1" {
  name                = "myTFResourceGroup"
  resource_group_name = azurerm_resource
}

# create cognitive account resource
}
