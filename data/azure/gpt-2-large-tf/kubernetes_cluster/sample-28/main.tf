resource "azurerm_storage_account" "name_0" {
  name                = "myTFResourceGroup"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
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
  vm_size_bytes_name = "Standard_D2_v2"
  vm_size_bytes_value = "Standard_D2_v2"
  vm_network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_address_prefix       = "myTFResourceGroup"
  vm_address_prefix_type = "Security Group"
  vm_address_prefix_data_type = "Standard_D2_v2"
  vm_address_prefix_data_size = "Standard_D2_v2"
  vm_address_prefix_data_type_value = "Standard_D2_v2"
  vm_storage_account_ids = ["${azurerm_storage_account.name_0.id}"]
  vm_storage_container_ids = ["${azurerm_storage_container.name_2.id}"]
  vm_storage_container_label_ids = ["${azurerm_storage_container.name_2.id}"]
  vm_storage_container_label_size = "Standard_D2_v2"
  vm_storage_container_label_type = "LRS"
  vm_storage_container_label_value = "Standard_D2_v2"
  vm_storage_storage_storage_uri_ids = ["${azurerm_storage_storage_storage_uri.rg.id}"]
  vm_storage_storage_storage_uri_label_ids = ["${azurerm_storage_storage_storage_uri.rg.id}"]
  vm_storage_storage_storage_uri_type = "LRS"
  vm_storage_storage_storage_uri_label_value = "Standard_D2_v2"
  vm_storage_storage_storage_uri_type_value = "Standard_D2_v2"
  vm_storage_storage_storage_uri_label_data = "Standard_D2_v2"
  vm_storage_storage_storage_uri_type_value = "Standard_D2_v2"
  vm_storage_storage_storage_uri_label_data_type = "Standard_D2_v2"
  vm_storage_storage_storage_uri_label_data_size = "Standard_D2_v2"
  vm_storage_storage_storage_storage_uri_type
}

