resource "azurerm_public_ip" "name_0" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  public_ip_address_allocation = "dynamic"
}

# Provider block with features block
resource "azurerm_public_ip_address" "name_1" {
  name                = "myTFResourceGroup"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  domain_name_label = "myTFResourceGroup"
}

# create resource group, use name example in location West Europe
resource "azurerm_network_interface" "name_2" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  ip_configuration {
    name                          = "myTFResourceGroup"
    subnet_id                     = azurerm_subnet.rg.id
    private_ip_address_allocation = "dynamic"
    public_ip_address_id          = azurerm_public_ip.name_0.id
  }
}

# managed disk resource. Storage account type is standard LRS, create option empty and disk size is 1 gb. Use resource group name and location
resource "azurerm_virtual_machine" "name_3" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_interface_ids = [azurerm_network_interface.name_2.id]
  vm_size               = "Standard_A0"
  vm_size_gb          = "Standard_A0"
  vm_size_prefix       = "Standard_A0"
  vm_address_prefix      = "Standard_A0"
  vm_address_prefix_type = "Standard_A0"
  vm_disk_size_gb         = "Standard_A0"
  vm_disk_size_prefix       = "Standard_A0"
  vm_disk_prefix_type = "Standard_A0"
  vm_storage_size_in_gb  = "Standard_A0"
  vm_storage_size_in_prefix  = "Standard_A0"
  vm_disk_type           = "Standard_A0"
  vm_disk_type_address = "Standard_A0"
  vm_disk_size_gb         = "Standard_A0"
  vm_disk_size_prefix       = "Standard_A0"
  vm_disk_prefix_type = "Standard_A0"
  vm_storage_size_in_gb  = "Standard_A0"
  vm_storage_size_in_prefix  = "Standard_A0"
  vm_network_interface_ids = [azurerm_network_interface.name_2.id]
  vm_network_interface_id         = azurerm_network_interface.name_2.id
  vm_network_label            = "myTFResourceGroup"
  vm_subnet_ids         = [azurerm_subnet.rg.id]
  vm_subnet_label           = "myTFResourceGroup"
  vm_subnet_id            = azurerm_subnet.rg.id
  vm_subnet_label_address = "myTFResourceGroup"
  vm_subnet_id_label = "myTFResourceGroup"
  vm_subnet_id_label_address_allocation = "dynamic"
  vm_subnet_id_label_type = "Standard_A0"
  vm_subnet_id_label_type_address = "Standard_A0"
  vm_subnet_id_label_type_address_allocation = "dynamic"
  vm_subnet_id_label_type_address_type = "Standard_A0"
  vm_subnet_id_label_type_address_type_address = "Standard_A0"
  vm_subnet_
}

