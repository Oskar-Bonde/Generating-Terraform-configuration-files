terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure provider

resource "azurerm_public_ip" "name_0" {
  name                         = "myTFResourceGroup"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
}

# create resource group
resource "azurerm_virtual_machine" "name_1" {
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
    vhd_uri       = azurerm_storage_account.name_2.primary_blob_endpoint
    caching       = "ReadWrite"
    create_option = "FromImage"
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
    Name = "myTFResourceGroup"
  }
}

# data block, azurem client config
resource "azurerm_storage_account" "name_2" {
  name                     = "myTFResourceGroup-storage-account"
  resource_group_name      = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_container.name_3.name
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_replication_type_size = "Standard_V2"
  account_replication_type_id = azurerm_storage_account.name_2.id
}

# create bot channels registration resource
resource "azurerm_storage_container" "name_3" {
  name                  = "myTFResourceGroup-storage-container"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_2.name
  container_access_type = "private"
}

