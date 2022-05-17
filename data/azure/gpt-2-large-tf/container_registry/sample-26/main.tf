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

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "myresources"
  location = "westus2"
}

# create container registry resource. Assign resource group name and location. Set sku to premium and admin enabled to false. Inside a georeplications block, set location to East US and enable zone reduncancy
resource "azurerm_virtual_machine" "name_1" {
  name                = "vm"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_interface_ids = ["${azurerm_network_interface.vm.id}"]
  vm_size               = "Standard_A0"
  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = "CoreOS"
    offer     = "CoreOS"
    sku       = "CoreOS"
  }

  storage_os_disk {
    name          = "osdisk"
    vhd_uri       = "${azurerm_storage_account.vm.primary_blob_endpoint}${azurerm_storage_container.vm.name}/${azurerm_storage_container.vm.name_servers}/CoreOS"
    caching       = "ReadWrite"
    create_option = "FromImage"
  }

  os_profile {
    computer_name  = "CoreOS"
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
    Name = "CoreOS"
  }
}

