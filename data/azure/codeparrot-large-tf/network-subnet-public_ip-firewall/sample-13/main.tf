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

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "example-resources"
  location = "westus"
}

# a virtual network resource in address space 10.0.0.0/16. Use location and resource group name with a 
# 
# resource "azurerm_virtual_network" "test" {
#   name                = "test-virtual-network"
#   address_space       = ["10.0.0.0/16"]
#   location            = "westus2"
#   resource_group_name = azurerm_resource_group.name_0.name
# }

# create virtual machine
resource "azurerm_virtual_machine" "name_1" {
  name                  = "test-virtual-machine"
  location              = "westus2"
  resource_group_name   = azurerm_resource_group.name_0.name
  network_interface_ids = [azurerm_network_interface.test.id]
  vm_size               = "Standard_A0"
  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name          = "myosdisk1"
    vhd_uri       = "${azurerm_storage_account.test.primary_blob_endpoint}${azurerm_storage_container.test.name}/myosdisk1.vhd"
    caching       = "ReadWrite"
    create_option = "FromImage"
  }

  os_profile {
    computer_name  = "myosdisk1"
    admin_username = "testadmin"
    admin_password = "Password1234!"
  }

  os_profile_linux_config {
    disable_password_authentication = true

    ssh_keys {
      path     = "/home/testadmin/.ssh/authorized_keys"
      key_data = "${file(var.public_key_path)}"
    }
  }

  tags {
    environment = "test"
  }
}

# create subnet resource, with address prefix 10.0.1.0/24. Use virtual network name and the resource group name
}

# resource block of public ip. Use allocation method static and sku standard. Use resource group name and location
}

# resource block with firewall. Create ip configuration block, assign subnet id and public ip id. Assign resource group location and name. Set sku tier to Standard and sku name to AZFW_Hub
}

