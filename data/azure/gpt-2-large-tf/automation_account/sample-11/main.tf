resource "azurerm_storage_account" "name_0" {
  name                = "myTFResourceGroup"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
}

# Provider block with features block
resource "azurerm_storage_container" "name_2" {
  name                  = "myTFResourceGroup"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_0.name
  container_access_type = "private"
}

# create resource group and name it example. Set location to westeurope
resource "azurerm_storage_container" "name_2" {
  name                  = "myTFResourceGroup"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_0.name
  container_access_type = "private"
}

# resource block, create automation account. Set location to resource group example and use its name. Set sku name to Basic
resource "azurerm_virtual_machine" "name_3" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size               = "Standard_A0"
  vm_size_gb         = "Standard_A0"
  vm_size_prefix          = "Standard_A0"
  vm_address_prefix       = "Standard_A0"
  vm_address_id         = azurerm_storage_account.name_0.id
  vm_address_name         = azurerm_storage_container.name_2.name
  vm_address_version       = "latest"
  vm_address_port_range  = "443"
  vm_address_address_id          = azurerm_storage_container.name_2.id
  vm_address_port_range_name = azurerm_storage_account.name_0.name
  vm_address_port_range_address = "443"
  vm_address_port_address_id_list = ["${azurerm_storage_container.name_2.id}"]
  vm_address_port_address_address_id_list_list = ["${azurerm_storage_container.name_2.id}"]
  vm_address_port_address_id_list_list_list = ["${azurerm_storage_container.name_2.id}"]
  vm_address_port_address_id_list_list_list_list_range = "443"
  vm_address_port_address_id_list_list_list_range_name = "443"
  vm_address_port_address_id_list_list_list_range_address = "443"
  vm_address_port_address_id_list_list_list_range_address_list = ["${azurerm_storage_container.name_2.id}"]
  vm_address_port_address_id_list_list_list_range_address_list_list = ["${azurerm_storage_container.name_2.id}"]
  vm_address_port_address_id_list_list_list_range_address_list_list_range_address_list_list_range_address = ["${azurerm_storage_container.name_2.id}"]
  vm_address_port_address_id_list_list_list_range_address_list_list_range_address_list_list_range_address_list_list_range_address = ["${azurerm_storage_container.name_2.id}"]
  vm_address_port_address_id_list_list_list_range_address_list_list_range_address_
}

