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
  vm_size               = "Standard_A0"
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size_gb         = "Standard_A1"
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true
  delete_data_disks_on_termination_list = true
  delete_data_disks_on_termination_list_list = true
  storage_image_reference {
    publisher = "CoreOS"
    offer     = "CoreOS"
    sku       = "CoreOS-${var.admin_username}"
    version   = "latest"
  }
  storage_os_disk {
    name          = "myTFResourceGroup-osdisk"
    vhd_uri       = azurerm_storage_account.rg.primary_blob_endpoint
    caching       = "ReadWrite"
    create_option = "FromImage"
    os_type       = "linux"
    os_type_size = "Standard_A1"
  }
  os_profile {
    computer_name  = "myTFResourceGroup-osdisk-${var.admin_username}"
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
    Name = "myTFResourceGroup-${var.admin_username}"
  }
}

# create resource group
resource "azurerm_virtual_machine_extension" "name_1" {
  name                = "myTFResourceGroup-extension"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  vm_size               = "Standard_A1"
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size_gb         = "Standard_A1"
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true
  delete_data_disks_on_termination_list = true
  delete_data_disks_on_termination_list_list = true
  storage_image_reference {
    publisher = "CoreOS"
    offer     = "CoreOS"
    sku       = "CoreOS-${var.admin_username}"
    version   = "latest"
  }
  storage_os_disk {
    name          = "myTFResourceGroup-osdisk"
    vhd_uri       = azurerm_storage_account.rg.primary_blob_endpoint
    caching       = "ReadWrite"
    create_option = "FromImage"
    os_type       = "linux"
    os_type_size = "Standard_A1"
  }
  os_profile {
    computer_name  = "myTFResourceGroup-osdisk-${var.admin_username}"
    admin_username = "core"
    admin_password = "core"
  }
  tags {
    Name = "myTFResourceGroup-osdisk-${var.admin_username}"
  }
}

# resource block, create automation account
resource "azurerm_virtual_machine_extension_root_volume_type" "name_2" {
  name                = "myTFResourceGroup-volume-type"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_interface_ids = ["${azurerm_network_interface.rg.id}
}

