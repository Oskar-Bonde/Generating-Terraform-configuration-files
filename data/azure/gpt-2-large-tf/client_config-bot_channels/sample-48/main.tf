resource "azurerm_public_ip" "name_0" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

# Provider block with features block
resource "azurerm_public_ip_address" "name_1" {
  name                = "myTFResourceGroup"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_network_interface" "name_2" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_security_group_id = azurerm_network_security_group.rg.id
}

# data block, azurem client config
resource "azurerm_virtual_machine" "name_3" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  vm_size               = "Standard_A0"
  network_interface_ids = [azurerm_network_interface.name_2.id]
  vm_size_in_gbs = "Standard_A1"
  vm_size_in_gbs_allocation = "static"
  vm_size_in_type = "Standard_A2"
  vm_size_in_type_allocation = "static"
  vm_size_in_type_key_id  = azurerm_storage_account.rg.id
  vm_size_in_type_key_id  = azurerm_storage_container.rg.id
  vm_size_in_type_secret_id = azurerm_storage_container.rg.id
  vm_size_in_type_secret_key_id = azurerm_storage_container.rg.id
  vm_size_in_type_secret_key_id_allocation = "static"
  vm_size_in_type_secret_key_id_key = azurerm_storage_container.rg.id
  vm_size_in_type_secret_key_id_key_allocation = "static"
  vm_size_in_type_secret_key_id_secret = azurerm_storage_container.rg.id
  vm_size_in_type_secret_key_id_secret_allocation = "static"
  vm_size_in_type_secret_key_id_secret_key = azurerm_storage_container.rg.id
  vm_size_in_type_secret_key_id_secret_key_allocation = "static"
  vm_size_in_type_secret_key_id_secret_key_path = "/dev/null"
  vm_size_in_type_secret_key_id_secret_key_path_in_gbs = "/dev/null"
  vm_size_in_type_secret_key_id_secret_key_path_in_gbs_allocation = "static"
  vm_size_in_type_secret_key_id_secret_key_path_in_gbs_allocation_path = "/dev/null"
  vm_size_in_type_secret_key_id_secret_key_path_in_gbs_path = "/dev/null"
  vm_size_in_type_secret_key_id_secret_key_path_in_gbs_path_in_gbs_allocation_path = "/dev/null"
  vm_size_in_type_secret_key_id_secret_key_path_in_gbs_path_in_gbs_path_in_gbs_path_in_gbs
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
}

