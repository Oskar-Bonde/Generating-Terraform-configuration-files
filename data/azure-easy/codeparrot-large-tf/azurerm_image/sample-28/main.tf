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
  name                = "myTFVM"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_1.name
  network_interface_ids = [azurerm_network_interface.nic.id]
  vm_size               = "Standard_A0"
  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name          = "myTFVM-osDisk"
    vhd_uri       = "${azurerm_storage_account.storage.primary_blob_endpoint}${azurerm_storage_container.storage_container.name}/myTFVM-osDisk.vhd"
    caching       = "ReadWrite"
    create_option = "FromImage"
  }

  os_profile {
    computer_name  = "myTFVM"
    admin_username = "myTFVM"
    admin_password = "Password1234!"
    custom_data    = "${base64encode("${data.template_file.user_data_windows_cloud_init.rendered}")}"
  }

  os_profile_linux_config {
    disable_password_authentication = true

    ssh_keys {
      path     = "/home/myTFVM/.ssh/authorized_keys"
      key_data = "${file(var.public_key_path)}"
    }
  }

  tags {
    environment = "test"
  }
}

