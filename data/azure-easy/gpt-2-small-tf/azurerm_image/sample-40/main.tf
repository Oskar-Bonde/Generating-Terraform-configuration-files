terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure provider
provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# resource block. Create azurerm image
resource "azurerm_virtual_machine" "name_1" {
  name                       = "myVM"
  location                   = "West US"
  resource_group_name         = azurerm_resource_group.name_0.name
  network_interface_ids       = [azurerm_network_interface.nic.id]
  vm_size                     = "Standard_A0"
  availability_set_id        = azurerm_availability_set.azure_a.id
  delete_os_disk_on_termination   = true
  delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name                        = "myOSDisk"
    caching                     = "ReadWrite"
    create_option               = "FromImage"
    managed_disk_type           = "Standard_LRS"
    create_option               = "Attach"
    lun                        = "0"
    disk_size_gb                = "50"
    disk_type                  = "pd-standard"
  }

  os_profile {
    computer_name  = "myVM"
    admin_username = "root"
    admin_password = "Password1234!"
  }

  os_profile_linux_config {
    disable_password_authentication = true

    ssh_keys {
      path     = "/home/ubuntu/.ssh/authorized_keys"
      key_data = "${file("~/.ssh/id_rsa.pub")}"
    }
  }

  tags {
    environment = "test"
  }
}

