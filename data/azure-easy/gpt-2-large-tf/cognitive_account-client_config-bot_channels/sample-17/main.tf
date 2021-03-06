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
  vm_size_gb         = "Standard_A1"
  network_interface_ids = [azurerm_network_interface.rg.id]
  vm_size_gb            = "Standard_A2"
  storage_image_reference {
    publisher = "CoreOS"
    offer     = "CoreOS"
    sku       = "CoreOS"
    version   = "latest"
  }
  storage_os_disk {
    name          = "myTFResourceGroup-osdisk"
    vhd_uri       = azurerm_storage_account.rg.primary_blob_endpoint
    caching       = "ReadWrite"
    create_option = "FromImage"
  }
  os_profile {
    computer_name  = "myTFResourceGroup-vm"
    admin_username = "core"
    admin_password = "core"
  }
  os_profile_linux_config {
    disable_password_authentication = true
  }
  os_profile_linux_config_policy {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config_policy_config {
    disable_password_authentication = false
  }
  os_profile_linux_config
}

# create resource group
}

# create cognitive account resource
}

# data block, azurem client config
}

# create bot channels registration resource
}

