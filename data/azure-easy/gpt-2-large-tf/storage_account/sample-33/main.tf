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
  vm_size               = "Standard_D1"
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size_gb         = "Standard_D1"
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true
  delete_data_disks_on_termination_list = true
  storage_image_reference {
    publisher = "CoreOS"
    offer     = "CoreOS"
    sku       = "CoreOS-${var.azure_region}-${var.azure_domain}"
    version   = "latest"
  }
  storage_os_disk {
    name          = "myTFResourceGroup-osdisk"
    vhd_uri       = azurerm_storage_account.rg.primary_blob_endpoint
    caching       = "ReadWrite"
    create_option = "FromImage"
    os_type       = "linux"
    os_type_size = "Standard_D1"
    os_data_disks_on_termination = true
  }
  os_profile {
    computer_name  = "myTFResourceGroup-osdisk"
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

# create resource group
resource "azurerm_virtual_machine_extension" "name_1" {
  name                = "myTFResourceGroup-extension"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  vm_size               = "Standard_D1"
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size_gb         = "Standard_D1"
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true
  delete_data_disks_on_termination_list = true
  storage_image_reference {
    publisher = "CoreOS"
    offer     = "CoreOS"
    sku       = "CoreOS-${var.azure_region}-${var.azure_domain}"
    version   = "latest"
  }
  storage_os_disk {
    name          = "myTFResourceGroup-osdisk"
    vhd_uri       = azurerm_storage_account.rg.primary_blob_endpoint
    caching       = "ReadWrite"
    create_option = "FromImage"
    os_type       = "linux"
    os_type_size = "Standard_D1"
    os_data_disks_on_termination = true
  }
  os_profile {
    computer_name  = "myTFResourceGroup-osdisk"
    admin_username = "core"
    admin_password = "core"
  }
  tags {
    Name = "myTFResourceGroup"
  }
}

# create storage account resource group
resource "azurerm_public_ip" "name_2" {
  name                         = "myTFResourceGroup-public-ip"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
  domain_name_label            = "myTFResourceGroup-public-ip"
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination =
}

