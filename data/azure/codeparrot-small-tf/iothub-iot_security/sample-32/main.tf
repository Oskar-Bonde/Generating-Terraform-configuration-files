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

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "example-rg"
  location = "westus2"
}

# iothub with sku name S1 and capacity 1. Use resource group name and location
# azurerm_resource_group "rg" {
#   name     = "iothubwithsku"
#   location = "West Europe"
# }

# create storage account
resource "azurerm_storage_account" "name_1" {
  name                     = "storageaccount"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# iot security solution, assign display name and name. Use iothub id and resrouce group name and location
# azurerm_storage_account "stor" {
#   name                     = "iothubid"
#   resource_group_name      = azurerm_resource_group.name_0.name
#   location                 = "West Europe"
#   account_tier             = "Standard"
#   account_replication_type = "GRS"
# }

# create virtual machine
resource "azurerm_virtual_machine" "name_2" {
  name                  = "vm"
  location              = "westus2"
  resource_group_name   = azurerm_resource_group.name_0.name
  network_interface_ids = [azurerm_network_interface.nic.id]
  vm_size               = "Standard_DS2_v2"
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true
  delete_os_disk_type            = "Standard_LRS"
  os_disk_size_gb            = "1023"
  os_type                  = "Linux"
  os_profile_linux_config {
    disable_password_authentication = false
  }
  os_profile {
    computer_name  = "vm"
    admin_username = "root"
    admin_password = "Password1234!"
    custom_data    = base64encode(file("vm.yaml"))
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "test"
  }
}

