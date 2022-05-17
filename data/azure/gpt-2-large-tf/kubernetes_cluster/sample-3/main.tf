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

# create resource group, use name example in location West Europe
resource "azurerm_storage_container" "name_2" {
  name                  = "myTFResourceGroup"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_0.name
  container_access_type = "private"
}

# kubernetes cluster. Use dns prefix exampleaks1, create a default node pool with 1 node count and vm size Standard_D2_v2. Make identity SystemAssigned
resource "azurerm_virtual_machine" "name_3" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size               = "Standard_D2_v2"
  vm_size_gb           = "Standard_D2_v2"
  vm_size_window           = "Standard_D2_v2"
  vm_address_prefix       = "10.0.0.0/16"
  vm_address_prefix_type = "CIDR_BLOCK"
  vm_address_prefix_data    = "${base64encode("${azurerm_storage_account.name_0.name}.${azurerm_storage_container.name_2.name}"
  vm_address_prefix_data_type = "CIDR_BLOCK_data"
  vm_address_prefix_data_size = "Standard_D2_v2"
  vm_address_prefix_data_type_size = "Standard_D2_v2"
  vm_address_prefix_data_type_data = "Standard_D2_v2"
  vm_address_prefix_data_size_gb  = "Standard_D2_v2"
  vm_address_prefix_data_size_window  = "Standard_D2_v2"
  vm_address_prefix_data_size_gb_type = "Standard_D2_v2"
  vm_address_prefix_data_size_window_data = "${base64encode("${azurerm_storage_account.name_0.name}.${azurerm_storage_container.name_2.name}"
  vm_address_prefix_data_size_gb_type_data = "Standard_D2_v2"
  vm_address_prefix_data_size_window_data_size = "Standard_D2_v2"
  vm_address_prefix_data_size_gb_type_data_size_window_data = "${base64encode("${azurerm_storage_account.name_0.name}.${azurerm_storage_container.name_2.name}"
  vm_address_prefix_data_size_gb_type_data_size_window_data_size_gb = "Standard_D2_v2"
  vm_address_prefix_data_size_gb_type_data_size_window_data_size_gb_type = "Standard_D2_v2"
  vm_address_prefix_data_size_gb_type_data_size_window_data_size_gb = "Standard_D2_v2
}

