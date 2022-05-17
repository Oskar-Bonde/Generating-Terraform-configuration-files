terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure provider

resource "azurerm_public_ip" "name_0" {
  name                         = "myTFResourceGroup"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "dynamic"
}

# create resource group
resource "azurerm_network_interface" "name_1" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_security_group_id = azurerm_network_security_group.rg.id
}

# resource block, create automation account
resource "azurerm_virtual_machine" "name_2" {
  name                  = "myTFResourceGroup"
  location              = "westus2"
  resource_group_name   = azurerm_resource_group.rg.name
  vm_size               = "Standard_A0"
  network_interface_ids = ["${azurerm_network_interface.name_1.id}"]
  vm_size_gb       = "Standard_A1"
  vm_size_prefix       = "Standard_A2"
  vm_address_pool_id = azurerm_storage_account.rg.id
  vm_address_pool_id_list = ["${azurerm_storage_account.rg.id}"]
  vm_address_pool_id_ip_address = "10.0.0.0/16"
  vm_address_pool_id_label        = "myTFResourceGroup"
  vm_address_pool_id_label_list = ["${azurerm_storage_account.rg.id}"]
  vm_address_pool_id_label_list_id = azurerm_storage_account.rg.id}"]
  vm_address_pool_id_label_list_id_list = ["${azurerm_storage_account.rg.id}"]
  vm_address_pool_id_label_list_id_list_id = ["${azurerm_storage_account.rg.id}"]
  vm_address_pool_id_label_list_id_list_id_label = ["${azurerm_storage_account.rg.id}"]
  vm_address_pool_id_label_list_id_list_id_label_list = ["${azurerm_storage_account.rg.id}"]
  vm_address_pool_id_label_list_id_list_id_label_list_id = ["${azurerm_storage_account.rg.id}"]
  vm_address_pool_id_label_list_id_list_id_label_list_id_label_list_id = ["${azurerm_storage_account.rg.id}"]
  vm_address_pool_id_label_list_id_list_id_label_list_id_label_list_id_label_list_id = ["${azurerm_storage_account.rg.id}"]
  vm_address_pool_id_label_list_id_list_id_label_list_id_label_list_id_label_list_id_label_list_id = ["${azurerm_storage_account.rg.id}"]
  vm_address_pool_id_label_list_id_list_id_label_list_id_label_list_id_label_list_id_label_list_id = ["${azurerm_storage_account.rg.id}"]
  vm_address_pool_id_label_list_id_list_id_label_list_id_label_list_id_label_list_id_label_list_id =
}

