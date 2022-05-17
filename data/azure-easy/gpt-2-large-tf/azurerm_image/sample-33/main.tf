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
  network_interface_ids = ["${azurerm_network_interface.name_1.id}"]
  vm_size               = "Standard_A0"
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true
  vm_disk_template {
    name = "myTFResourceGroup-${var.azure_vm_size}"
    managed_disk_template = true
  }
}

# create resource group
resource "azurerm_network_interface" "name_1" {
  name                = "myTFResourceGroup-${var.
}

# resource block. Create azurerm image
}

