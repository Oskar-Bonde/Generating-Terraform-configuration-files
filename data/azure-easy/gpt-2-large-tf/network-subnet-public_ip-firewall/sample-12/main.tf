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
  delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "CoreOS"
    offer     = "CoreOS"
    sku       = "CoreOS"
    version   = "latest"
  }

  storage_os_disk {
    name          = "myTFResourceGroup-os-disk"
    vhd_uri       = azurerm_storage_account.rg.primary_blob_endpoint
    caching       = "ReadWrite"
    create_option = "FromImage"
  }

  os_profile {
    computer_name  = "myTFResourceGroup-admin"
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
  name                = "myTFResourceGroup-admin"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
  vm_size               = "Standard_A0"
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "CoreOS"
    offer     = "CoreOS"
    sku       = "CoreOS"
    version   = "latest"
  }

  storage_os_disk {
    name          = "myTFResourceGroup-os-disk"
    vhd_uri       = azurerm_storage_account.rg.primary_blob_endpoint
    caching       = "ReadWrite"
    create_option = "FromImage"
  }

  os_profile {
    computer_name  = "myTFResourceGroup-admin"
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

# a virtual network resource group
resource "azurerm_network_interface" "name_2" {
  name                = "myTFResourceGroup-admin"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  ip_configuration {
    name                          = "myTFResourceGroup-admin"
    subnet_id                     = azurerm_subnet.name_3.id
    private_ip_address_allocation = "static"
    public_ip_address_id          = azurerm_public_ip.rg.id
  }
}

# create subnet resource group
resource "azurerm_subnet" "name_3" {
  name                 = "myTFResourceGroup-admin"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_interface_ids = ["${azurerm_network_interface.name_2.id}"]
  address_prefix              = "10.0.0.0/16"
  address
}

# resource block of public ip
}

# resource block with firewall
}

