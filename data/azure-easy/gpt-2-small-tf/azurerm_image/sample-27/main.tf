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
  name                      = "myVM"
  location                  = "West US"
  resource_group_name        = azurerm_resource_group.name_0.name
  network_interface_ids      = [azurerm_network_interface.nic.id]
  vm_size                   = "Standard_A0"
  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
  storage_os_disk {
    name                    = "myOSDisk"
    vhd_uri                 = azurerm_storage_account.my_storage_account.primary_blob_endpoint
    caching                 = "ReadWrite"
    create_option            = "FromImage"
    os_type                  = "linux"
    disk_size_gb              = "50"
    disk_type                = "pd-standard"
    disk_size_gb              = "50"
  }
  os_profile {
    computer_name  = "myVM"
    admin_username = "root"
    admin_password = "Password1234!"
  }
}

