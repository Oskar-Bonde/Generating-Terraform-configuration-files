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
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size_in_gbs = "Standard_A1"
  vm_size_in_gbs_volume_size = "Standard_A1"
  vm_size_in_gbs_volume_type = "Standard_LRS"
  vm_size_in_gbs_volume_iops = "Standard_LRS"
  vm_size_in_gbs_volume_iops_per_gbs = "Standard_LRS"
  vm_size_in_gbs_volume_size_in_gbs = "Standard_LRS"
  vm_size_in_gbs_volume_type = "Standard_LRS"
  vm_size_in_gbs_volume_type_gbs = "Standard_LRS"
  vm_size_in_gbs_volume_type_iops = "Standard_LRS"
  vm_size_in_gbs_volume_iops_per_gbs = "Standard_LRS"
  vm_size_in_gbs_volume_size_in_gbs_volume_type = "Standard_LRS"
  vm_size_in_gbs_volume_type_iops_per_gbs = "Standard_LRS"
  vm_size_in_gbs_volume_size_in_gbs_volume_type_iops = "Standard_LRS"
  vm_size_in_gbs_volume_type_iops_per_gbs = "Standard_LRS"
  vm_size_in_gbs_volume_size_in_gbs_volume_type_iops_per_gbs = "Standard_LRS"
  vm_size_in_gbs_volume_size_in_gbs_volume_type_iops_per_gbs = "Standard_LRS"
  vm_size_in_gbs_volume_size_in_gbs_volume_type_iops_per_gbs = "Standard_LRS"
  vm_size_in_gbs_volume_size_in_gbs_volume_type_iops_per_gbs = "Standard_LRS"
  vm_size_in_gbs_volume_size_in_gbs_volume_type_iops_per_gbs = "Standard_LRS"
  vm_size_in_gbs_volume_size_in_gbs_volume_type_iops_per_gbs = "Standard_LRS"
  vm_size_in_gbs_volume_size_in_gbs_volume_type_iops_per_gbs = "Standard_LRS"
  vm_size_in_gbs_volume_size_in_gbs_volume_type_iops_per_gbs = "Standard_LRS"
  vm_size_in_gbs_volume_size_in_gbs_volume_type_iops_per_gbs = "Standard_LRS"
  vm_size_in_gbs_volume_size_in_gbs_volume_type_iops_per_gbs = "Standard_LRS"
  vm_size_in_gbs_volume_size
}

# create resource group
resource "azurerm_storage_account" "name_1" {
  name                = "myTFResourceGroup"
  resource_group_name
}

# create container registry resource
}

