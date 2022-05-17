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
  name     = "example"
  location = "westus"
}

# resource block. Create image in location west us and assign resource group name. In os disc block, assign os type Linux, generatlized state, and size 30 gb
resource "azurerm_virtual_machine" "name_1" {
  name                = "myTFVM"
  location            = "westus"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  network_interface_ids = ["${azurerm_network_interface.myTFVNIC.id}"]
  vm_size               = "Standard_A0"
  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name          = "myTFVM.vhd"
    vhd_uri       = "${azurerm_storage_account.myTFV.primary_blob_endpoint}${azurerm_storage_container.myTFVM.name}/myTFVM.vhd"
    create_option = "FromImage"
  }

  os_profile {
    computer_name  = "myTFVM"
    admin_username = "${var.username}"
    admin_password = "Password1234!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  tags {
    environment = "test"
  }
}

