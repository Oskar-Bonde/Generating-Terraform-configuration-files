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
  vm_size               = "Standard_A0"
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size_in_gbs = "Standard_A1"
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true
  storage_image_reference {
    publisher = "CoreOS"
    offer     = "CoreOS"
    sku       = "CoreOS"
    version   = "latest"
  }
  storage_os_disk {
    name          = "myTFResourceGroup-os-disk"
    vhd_uri       = azurerm_storage_account.rg.primary_blob_endpoint
    caching       = "ReadWrite"
    create_option = "FromImage"
    os_type       = "linux"
    create_option_name = "myTFResourceGroup-os-disk-${count.index}"
  }
  os_profile {
    computer_name  = "myTFResourceGroup-os-profile"
    admin_username = "core"
    admin_password = "core"
  }
  os_profile_linux_config {
    disable_password_authentication = true

    ssh_keys {
      path     = "/home/core/.ssh/authorized_keys"
      key_data = "${file(var.public_ssh_key)}"
    }
  }
  tags {
    Name = "myTFResourceGroup"
  }
}

# create resource group
resource "azurerm_virtual_machine_
}

# create cognitive account resource
}

# data block, azurem client config
}

# create bot channels registration resource
}

# resource block called bot channel direct line speech
}

