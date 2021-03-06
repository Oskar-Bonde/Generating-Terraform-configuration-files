terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# resource block. Create azurerm image
resource "azurerm_virtual_machine" "name_2" {
  name                = "myTFVirtualMachine"
  location            = "westus2"
  resource_group_name = "${azurerm_resource_group.name_1.name}"
  network_interface_ids = ["${azurerm_network_interface.mynic.id}"]
  vm_size               = "Standard_A0"
  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name          = "myTFOSDisk"
    vhd_uri       = "${azurerm_storage_account.mystorageaccount.name}.vhd"
    caching       = "ReadWrite"
    create_option = "FromImage"
  }

  os_profile {
    computer_name  = "myTF"
    admin_username = "${var.vm_admin_username}"
    admin_password = "${var.vm_admin_password}"
  }

  os_profile_linux_config {
    disable_password_authentication = true

    ssh_keys {
      path     = "/home/${var.vm_admin_username}/.ssh/authorized_keys"
      key_data = "${file(var.vm_admin_public_key_path)}"
    }
  }

  tags {
    environment = "Development"
  }
}

