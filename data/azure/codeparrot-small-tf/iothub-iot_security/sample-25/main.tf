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
#   name     = "iothub"
#   location = "westus2"
# }

# Create storage account
resource "azurerm_storage_account" "name_1" {
  name                     = "storageaccount${lower(var.storage_account_name)}"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_replication_type
  tags                     = var.tags
}

# iot security solution, assign display name and name. Use iothub id and resrouce group name and location
# azurerm_storage_account "stor" {
#   name                     = "iothub"
#   resource_group_name      = azurerm_resource_group.name_0.name
#   location                 = var.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
# }

# Create virtual machine
resource "azurerm_virtual_machine" "name_2" {
  name                  = var.vm_name
  location              = var.location
  resource_group_name   = azurerm_resource_group.name_0.name
  network_interface_ids = [azurerm_network_interface.nic.id]
  vm_size               = var.vm_size
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true
  os_disk {
    name          = var.vm_os_disk_name
    vhd_uri       = var.vm_os_disk_vhd_uri
    caching       = var.vm_os_disk_caching
    create_option = var.vm_os_disk_create_option
  }
  os_profile {
    computer_name  = var.vm_name
    admin_username = var.vm_admin_username
    admin_password = var.vm_admin_password
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = var.tags
}

