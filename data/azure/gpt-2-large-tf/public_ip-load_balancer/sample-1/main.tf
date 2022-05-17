resource "azurerm_virtual_machine" "name_0" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  vm_size               = "Standard_D1"
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size_gb         = "Standard_D1"
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true
  delete_data_disks_on_termination_list = true
  vm_disk_type           = "gp2"
  vm_disk_size           = "Standard_D1"
  vm_disk_type_format     = "Standard_D1"
  vm_disk_size_format     = "Standard_D1"
  vm_disk_type_sku = "Standard_D1"
  vm_disk_type_sku_list = "Standard_D1"
  vm_disk_type_sku_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list_list_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list_list_list_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list_list_list_list_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list_list_list_list_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list_list_list_list_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list_list_list_list_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list_list_list_list_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list_list_list_list_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list_list_list_list_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list_list_list_list_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list_list_list_list_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list_list_list_list_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list_list_list_list_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list_list_list_list_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list_list_list_list_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list_list_list_list_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list_list_list_list_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list_list_list_list_list_list = "Standard_D1"
  vm_disk_type_sku_list_list_list_list_list_list
}

# Provider block with features block
}

# create resource group, use name example in location West Europe
}

# create public ip resource, use static allocation method. Assign resource group name and location
}

# lb resource. In frontend ip configuration block, asssign name and public ip address id. Use resource group name and location
}

