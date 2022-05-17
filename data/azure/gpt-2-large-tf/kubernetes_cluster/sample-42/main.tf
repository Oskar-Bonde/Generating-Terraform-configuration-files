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
  name     = "outbound"
  location = "westus2"
}

# kubernetes cluster. Use dns prefix exampleaks1, create a default node pool with 1 node count and vm size Standard_D2_v2. Make identity SystemAssigned
resource "azurerm_virtual_machine" "name_1" {
  name                = "rg"
  location            = "westus2"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  vm_size               = "Standard_D2_v2"
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size_in_gbs = "Standard_D2_v2"

  storage_image_reference {
    publisher = "CoreOS"
    offer     = "CoreOS"
    sku       = "CoreOS"
    version   = "latest"
  }

  storage_os_disk {
    name          = "osdisk"
    vhd_uri       = "${azurerm_storage_account.rg.primary_blob_endpoint}${azurerm_storage_container.rg.name}/${azurerm_storage_container.rg.name}"
    caching       = "ReadWrite"
    create_option = "FromImage"
  }

  os_profile {
    computer_name  = "rg"
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
    Name = "rg"
  }
}

