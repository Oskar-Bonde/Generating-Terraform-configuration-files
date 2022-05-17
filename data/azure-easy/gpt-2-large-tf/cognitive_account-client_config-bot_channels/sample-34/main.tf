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
    name          = "myTFResourceGroup"
    vhd_uri       = azurerm_storage_account.name_2.primary_blob_endpoint
    caching       = "ReadWrite"
    create_option = "FromImage"
    os_type       = "linux"
    create_option_name = "myTFResourceGroup"
    os_type_family  = "linux"
    os_type_password = "linux"
  }
  os_profile {
    computer_name  = "myTFResourceGroup"
    admin_username = "myTFResourceGroup"
    admin_password = "myTFResourceGroup"
  }
  os_profile_linux_config {
    disable_password_authentication = true

    ssh_keys {
      path     = "/home/${var.username}/.ssh/authorized_keys"
      key_data = "${file(var.public_ssh_key)}"
    }
  }
  tags {
    Name = "myTFResourceGroup"
  }
}

# create resource group
resource "azurerm_virtual_machine_extension" "name_1" {
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
    name          = "myTFResourceGroup"
    vhd_uri       = azurerm_storage_account.name_2.primary_blob_endpoint
    caching       = "ReadWrite"
    create_option = "FromImage"
    os_type       = "linux"
    create_option_name = "myTFResourceGroup"
    os_type_family  = "linux"
    os_type_password = "linux"
  }
  os_profile {
    computer_name  = "myTFResourceGroup"
    admin_username = "myTFResourceGroup"
    admin_password = "myTFResourceGroup"
  }
  tags {
    Name = "myTFResourceGroup"
  }
}

# create cognitive account resource group
resource "azurerm_storage_account" "name_2" {
  name                = "myTFResourceGroup"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier   = "Standard"
  account_replication_type = "LRS"
  account_replication_type_size = "Standard_V3"
  tags {
    Name = "myTFResourceGroup"
  }
}

# data block, azurem client config
resource "azurerm_storage_container" "name_3" {
  name                  = "myTFResourceGroup"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_2.name
  container_access_type = "private"
}

# create bot channels registration resource group
}

