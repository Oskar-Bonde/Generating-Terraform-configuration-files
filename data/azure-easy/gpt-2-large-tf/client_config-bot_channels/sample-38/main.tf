terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure provider

resource "azurerm_virtual_machine" "name_0" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size               = "Standard_A0"
  delete_os_disk_on_termination = true
  storage_image_reference {
    publisher = "CoreOS"
    offer     = "CoreOS"
    sku       = "CoreOS"
    version   = "latest"
  }
  storage_os_disk {
    name          = "myTFResourceGroup-os-disk"
    vhd_uri       = azurerm_storage_account.name_1.primary_blob_endpoint
    caching       = "ReadWrite"
    create_option = "FromImage"
  }
  os_profile {
    computer_name  = "myTFResourceGroup-admin"
    admin_username = "admin"
    admin_password = "admin"
  }
  os_profile_linux_config {
    disable_password_authentication = true
    ssh_keys {
      path     = "/home/${var.admin_username}/.ssh/authorized_keys"
      key_data = "${file("${var.admin_password}")}"
    }
  }
  os_profile_linux_config {
    disable_password_authentication = true
    ssh_keys {
      path     = "/home/${var.admin_password}/.ssh/authorized_keys"
      key_data = "${file("${var.admin_password}")}"
    }
  }
  os_profile_linux_config {
    disable_password_authentication = true
    ssh_keys {
      path     = "/home/${var.admin_password}/.ssh/authorized_keys"
      key_data = "${file("${var.admin_password}")}"
    }
  }
  tags {
    Name = "myTFResourceGroup"
  }
}

# create resource group
resource "azurerm_storage_account" "name_1" {
  name                = "myTFResourceGroup-storage-account"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  account_tier   = "Standard"
  account_replication_type = "LRS"
  tags {
    Name = "myTFResourceGroup-storage-account"
  }
}

# data block, azurem client config
resource "azurerm_storage_container" "name_3" {
  name                  = "myTFResourceGroup-storage-container"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_1.name
  container_access_type = "private"
}

# create bot channels registration resource group
resource "azurerm_storage_container" "name_3" {
  name                  = "myTFResourceGroup-storage-container"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_1.name
  container_access_type = "private"
}

