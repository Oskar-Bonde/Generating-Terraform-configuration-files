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
  vm_size               = "Standard_D2_v2"
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size_gb         = "Standard_D2_v2"
  vm_size_window         = "Standard_D2_v2"
  vm_network_interface_ids  = ["${azurerm_network_interface.rg.id}"]
  vm_network_label        = "myTFResourceGroup"
  vm_address_prefix       = "myTFResourceGroup"
  vm_address_prefix_type = "Security Group"
  vm_address_prefix_data       = "${var.myTFResourceGroup_data}"
  vm_address_prefix_data_version = "${var.myTFResourceGroup_data_version}"
  vm_address_prefix_data_label = "${var.myTFResourceGroup_data_label}"
  vm_address_prefix_data_backup_address = "${var.myTFResourceGroup_data_backup_address}"
  vm_address_prefix_data_backup_address_allocation = "static"
  vm_address_prefix_data_backup_type = "Standard_D2_v2"
  vm_address_prefix_data_backup_type_address = "Security Group"
  vm_address_prefix_data_backup_type_address_allocation = "static"
  vm_address_prefix_data_backup_type_address_path = "/dev/null"
  vm_address_prefix_data_backup_type_address_uri = "${var.myTFResourceGroup_data_backup_type_address_uri}"
  vm_address_prefix_data_backup_uri = "${var.myTFResourceGroup_data_backup_uri}"
  vm_address_prefix_data_backup_uri_uri = "${var.myTFResourceGroup_data_backup_uri_uri}"
  vm_address_prefix_data_backup_uri_uri_path = "/dev/null"
  vm_address_prefix_data_backup_uri_uri_type = "Standard_D2_v2"
  vm_address_prefix_data_backup_uri_type_uri = "Security Group"
  vm_address_prefix_data_backup_uri_uri_path = "/dev/null"
  vm_address_prefix_data_backup_uri_type_uri_path = "/dev/null"
  vm_address_prefix_data_backup_uri_type_uri
}

