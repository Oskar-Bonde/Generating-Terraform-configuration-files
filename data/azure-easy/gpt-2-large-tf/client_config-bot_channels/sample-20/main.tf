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
  name     = "myTFResourceGroup_outbound"
  location = "westus2"
}

# data block, azurem client config
resource "azurerm_virtual_machine" "name_1" {
  name                = "myTFResourceGroup_virtual_machine"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  vm_size               = "Standard_A0"
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size_gb         = "Standard_A1"
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "CoreOS"
    offer     = "CoreOS"
    sku       = "CoreOS"
    version   = "latest"
  }

  storage_os_disk {
    name          = "myTFResourceGroup_os_disk"
    vhd_uri       = azurerm_storage_account.name_2.primary_blob_endpoint
    caching       = "ReadWrite"
    create_option = "FromImage"
  }

  os_profile {
    computer_name  = "myTFResourceGroup"
    admin_username = "core"
    admin_password = "core"
  }

  os_profile_linux_config {
    disable_password_authentication = true

    ssh_keys {
      path     = "/home/core/.ssh/authorized_keys"
      key_data = "${file(var.public
}

# create bot channels registration resource
resource "azurerm_storage_account" "name_2" {
  name                = "myTFResourceGroup_storage_account"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier   = "Standard"
  account_replication_type = "LRS"

  tags {
    Name = "myTFResourceGroup"
  }
}

