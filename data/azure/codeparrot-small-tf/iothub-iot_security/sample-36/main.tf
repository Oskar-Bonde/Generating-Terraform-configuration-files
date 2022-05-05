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
  name                     = "storageaccount${random_string.suffix.result}"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# iot security solution, assign display name and name. Use iothub id and resrouce group name and location
# azurerm_storage_account "stor" {
#   name                     = "iothubid"
#   resource_group_name      = azurerm_resource_group.name_0.name
#   location                 = "westus2"
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
# }

# Create virtual machine
resource "azurerm_virtual_machine" "name_2" {
  name                  = "vm${random_string.suffix.result}"
  location              = "westus2"
  resource_group_name   = azurerm_resource_group.name_0.name
  network_interface_ids = [azurerm_network_interface.nic.id]
  vm_size               = "Standard_DS2_v2"

  storage_image_reference {
    publisher = "CoreOS"
    offer     = "CoreOS"
    sku       = "Stable"
    version   = "latest"
  }

  storage_os_disk {
    name          = "osdisk${random_string.suffix.result}"
    vhd_uri       = "${azurerm_storage_account.name_1.primary_blob_endpoint}${azurerm_storage_container.vhds.name}/osdisk1.vhd"
    caching       = "ReadWrite"
    create_option = "FromImage"
  }

  os_profile {
    computer_name  = "vm${random_string.suffix.result}"
    admin_username = "core"
    admin_password = ""
    custom_data    = base64encode("{\"role\":\"azure\",\"dc\":\"${azurerm_resource_group.name_0.location}\"}")
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  tags = {
    environment = "dev"
  }
}

