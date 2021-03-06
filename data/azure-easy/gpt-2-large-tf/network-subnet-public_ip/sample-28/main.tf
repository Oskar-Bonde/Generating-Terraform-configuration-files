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
  delete_data_disks_on_termination = true
  vm_disk_type           = "gp2"
  vm_disk_size           = "Standard_A1"
  vm_disk_type_format     = "Standard_A2"
  vm_memory_size           = "Standard_A3"
  vm_memory_type           = "Standard_A4"
  vm_memory_type_format     = "Standard_A5"
  vm_memory_type_format_list = "Standard_A6"
  vm_memory_size_list = "Standard_A7"
  vm_memory_type_list_format     = "Standard_A8"
  vm_memory_size_list_format = "Standard_A9"
  vm_memory_type_list_format_list = "Standard_A10"
  vm_memory_size_list_format_list = "Standard_A11"
  vm_memory_type_list_format_list_list = "Standard_A12"
  vm_memory_size_list_format_list_list_list = "Standard_A13"
  vm_memory_type_list_format_list_list_list_list = "Standard_A14"
  vm_memory_size_list_format_list_list_list_list_list_14 = "Standard_A14"
  vm_memory_size_list_format_list_list_list_list_15 = "Standard_A15"
  vm_memory_size_list_format_list_list_list_15_15 = "Standard_A15"
  vm_memory_size_list_format_list_list_list_15_15_15 = "Standard_A15"
  vm_memory_size_list_format_list_list_list_15_15_15_15 = "Standard_A15"
  vm_memory_size_list_format_list_list_list_15_15_15_15_15 = "Standard_A15"
  vm_memory_size_list_format_list_list_list_15_15_15_15_15_15 = "Standard_A15"
  vm_memory_size_list_format_list_list_list_15_15_15_15_15_15_15 = "Standard_A15"
  vm_memory_size_list_format_list_list_list_15_15_15_15_15_15_15_15 = "Standard_A15"
  vm_memory_size_list_format_list_list_list_15_15_15_15_15_15_15_15_15 = "Standard_A15"
  vm_memory_size_list_format_list_list_list_15_15_15_15_15_15_15_15_15_15 = "Standard_A15"
  vm_memory_size_list_format_list_list_list_15_15_15_15_15_15_15_15_15_15 = "Standard_A15"
  vm_memory_size_list_format_list_list_list_15_15_15_15_15_15_15_15_15_15_15 = "Standard_A15"
  vm_memory_size_list_format_list_list
}

# create resource group
resource "azurerm_virtual_machine_
}

# a virtual network resource
}

# create subnet resource
}

# resource block of public ip
}

