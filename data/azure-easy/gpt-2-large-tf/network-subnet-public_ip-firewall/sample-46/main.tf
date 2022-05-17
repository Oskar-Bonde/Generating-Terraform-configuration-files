resource "azurerm_storage_account" "name_0" {
  name                = "myTFResourceGroup"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
}

# Provider block with azure provider
resource "azurerm_virtual_machine" "name_1" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  vm_size               = "Standard_A0"
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size_gb         = "Standard_A1"
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true
  storage_image_reference {
    publisher = "CoreOS"
    offer     = "CoreOS"
    sku       = "CoreOS"
    version   = "latest"
  }
  storage_os_disk {
    name          = "myTFResourceGroup-osdisk"
    vhd_uri       = azurerm_storage_account.name_0.primary_blob_endpoint
    caching       = "ReadWrite"
    create_option = "FromImage"
  }
  os_profile {
    computer_name  = "myTFResourceGroup-osdisk-${count.index}"
    admin_username = "core"
    admin_password = "core"
  }
  os_profile_linux_config {
    disable_password_authentication = true
    ssh_keys {
      path     = "/home/core/.ssh/authorized_keys"
      key_data = "${file("${var.public_ssh_key}")}"
    }
  }
  tags {
    Name = "myTFResourceGroup"
  }
}

# create resource group
resource "azurerm_storage_container"
}

# a virtual network resource
}

# create subnet resource
}

# resource block of public ip
}

# resource block with firewall
}

