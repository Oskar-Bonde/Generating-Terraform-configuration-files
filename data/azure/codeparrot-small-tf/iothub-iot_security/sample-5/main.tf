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
  name     = "example"
  location = "westus2"
}

# iothub with sku name S1 and capacity 1. Use resource group name and location
# azurerm_resource_group "rg" {
#   name     = "iothubwithsku"
#   location = "westus2"
# }

# Create storage account
resource "azurerm_storage_account" "name_1" {
  name                     = "storageaccount${random_id.storage_name.hex}"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# iot security solution, assign display name and name. Use iothub id and resrouce group name and location
# azurerm_storage_account "stor" {
#   name                     = "iothubidssg"
#   resource_group_name      = azurerm_resource_group.name_0.name
#   location                 = "westus2"
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
# }

# Create virtual machine
resource "azurerm_virtual_machine" "name_2" {
  name                  = "vm${random_id.vm_name.hex}"
  location              = "westus2"
  resource_group_name   = azurerm_resource_group.name_0.name
  network_interface_ids = [azurerm_network_interface.nic.id]
  vm_size               = "Standard_DS1_v2"
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true
  delete_os_disk_size_on_termination = true
  os_disk_size_in_gb = 50
  os_type               = "linux"
  os_type_linux_channel = "RAPID"
  os_type_linux_version = "linux"
  admin_username         = "root"
  admin_password         = "Password1234!"
  os_profile_linux_config {
    disable_password_authentication = false
  }
  os_profile {
    computer_name  = "vm${random_id.vm_name.hex}"
    admin_username = "root"
    admin_password = "Password1234!"
    custom_data    = base64encode(file("vmuserdata.txt"))
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "test"
  }
}

