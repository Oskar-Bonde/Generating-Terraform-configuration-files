terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features block
provider "azurerm" {
  features {}
}

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westeurope"
}

# resource block. Create image in location west us and assign resource group name. In os disc block, assign os type Linux, generatlized state, and size 30 gb.
resource "azurerm_virtual_machine" "name_1" {
  name                    = "myVM"
  location                 = "westeurope"
  resource_group_name     = azurerm_resource_group.name_0.name
  network_interface_ids = [azurerm_network_interface.nic.id]
  vm_size                  = "Standard_DS2_v2"
  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name                             = "myOSDisk"
    caching                          = "ReadWrite"
    create_option                      = "FromImage"
    managed_disk_type                 = "Standard_LRS"
    create_option                      = "Attach"
    lun                               = "0"
    disk_size_gb                      = "30"
    disk_type                        = "pd-standard"
    disk_type_gb                     = "30"
  }

  os_profile {
    computer_name  = "myVM"
    admin_username = "admin"
    admin_password = ""
  }

  os_profile_linux_config {
    disable_password_authentication = true

    ssh_keys {
      path     = "/home/admin/.ssh/authorized_keys"
      key_data = "${file(var.public_ssh_key)}"
    }
  }

  tags {
    environment = "test"
  }
}

