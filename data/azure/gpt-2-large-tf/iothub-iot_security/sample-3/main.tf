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
  name     = "myTFResourceGroup_lb"
  location = "westus2"
}

# iothub with sku name S1 and capacity 1. Use resource group name and location
resource "azurerm_virtual_machine" "name_1" {
  name                = "myTFResourceGroup_lb"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
  vm_size               = "Standard_A0"
  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = "CoreOS"
    offer     = "CoreOS"
    sku       = "CoreOS"
  }

  storage_os_disk {
    name          = "myTFResourceGroup_lb"
    vhd_uri       = azurerm_storage_account.name_2.primary_blob_endpoint
    caching       = "ReadWrite"
    create_option = "FromImage"
  }

  os_profile {
    computer_name  = "myTFResourceGroup_lb"
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
    Name = "myTFResourceGroup_lb"
  }
}

# iot security solution, assign display name and name. Use iothub id and resrouce group name and location
resource "azurerm_storage_account" "name_2" {
 
}

