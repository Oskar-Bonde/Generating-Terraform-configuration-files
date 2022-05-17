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
  address_space       = ["10.0.0.0/16"]
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
    vhd_uri       = azurerm_storage_account.name_1.primary_blob_endpoint
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
      key_data = "${file("${var.ssh_key}")}"
    }
  }
  tags {
    Name = "myTFResourceGroup"
  }
}

# make resource group
resource "azurerm_storage_account" "name_1" {
  name                = "myTFResourceGroup"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier   = "Standard"
  account_replication_type = "LRS"
  account_replication_type_size = "Standard_A0"
  account_replication_type_id = azurerm_storage_account.name_1.id
  tags {
    Name = "myTFResourceGroup"
  }
}

# create cognitive account resource group
resource "azurerm_storage_container" "name_2" {
  name                  = "myTFResourceGroup"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_1.name
  container_access_type = "private"
}

