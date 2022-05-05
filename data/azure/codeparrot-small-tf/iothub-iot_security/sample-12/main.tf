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
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# iothub with sku name S1 and capacity 1. Use resource group name and location West US
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# iot security solution, assign display name and name. Use iothub id and resrouce group name and location
# azurerm_resource_group "rg" {
#   name = "myTFResourceGroup"
#   location = "westus2"
# }

# AzureRM virtual machine
resource "azurerm_virtual_machine" "name_2" {
  name                  = "myTFVM"
  location              = "westus2"
  resource_group_name   = azurerm_resource_group.name_1.name
  network_interface_ids = [azurerm_network_interface.nic.id]
  vm_size               = "Standard_DS1_v2"
  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = "CoreOS"
    offer     = "CoreOS"
    sku       = "Stable"
    version   = "latest"
  }

  storage_os_disk {
    name          = "myosdisk1"
    vhd_uri       = "${azurerm_storage_account.storage.primary_blob_endpoint}${azurerm_storage_container.storage.name}/myosdisk1.vhd"
    caching       = "ReadWrite"
    create_option = "FromImage"
  }

  os_profile {
    computer_name  = "mytfvm"
    admin_username = "core"
    admin_password = "Password1234!"
    custom_data    = base64encode("${data.template_file.azurerm_user_data.rendered}")
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  os_profile_linux_config {
    disable_password_authentication = false

    ssh_keys {
      path     = "/home/core/.ssh/authorized_keys"
      key_data = "${file("id_rsa.pub")}"
    }
  }

  tags {
    environment = "test"
  }
}

