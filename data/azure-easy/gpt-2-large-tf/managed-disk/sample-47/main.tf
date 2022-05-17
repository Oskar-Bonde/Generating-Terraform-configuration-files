terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure

resource "azurerm_virtual_machine" "name_0" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size               = "Standard_A0"
  delete_os_disk_on_termination = true
  vm_size               = "Standard_A1"
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
    managed_disk_type = "pd-ssd"
    os_type           = "linux"
  }
  os_profile {
    computer_name  = "myTFResourceGroup-os-profile"
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
    Name = "myTFResourceGroup-os-profile"
  }
}

# create resource group
resource "azurerm_storage_account" "name_1" {
  name                = "myTFResourceGroup-storage-account"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier   = "Standard"
  account_replication_type = "LRS"
  account_replication_type_name = "myTFResourceGroup-storage-account"
  tags {
    Name = "myTFResourceGroup-storage-account"
  }
}

# make managed disk resource group
resource "azurerm_storage_container" "name_2" {
  name                  = "myTFResourceGroup-container"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_1.name
  container_access_type = "private"
  storage_account_type        = "Standard_LRS"
  container_access_type_name = "private"
  storage_container_label      = "myTFResourceGroup-container"
  storage_container_label_name = "myTFResourceGroup-container"
  depends_on            = ["azurerm_storage_account.name_1"]
}

