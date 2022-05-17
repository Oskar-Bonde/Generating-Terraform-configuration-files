resource "azurerm_virtual_network" "name_0" {
  name                = "myTFResourceGroup"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.1.0/24"]
}

# Provider block with features block
resource "azurerm_subnet" "name_4" {
  name                 = "myTFResourceGroup"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_0.name
  address_prefix       = "10.0.0.0/24"
  address_prefix_count = 3
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_network_security_group" "name_2" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_prefix       = "10.0.1.0/24"
  address_prefix_count = 3
}

# a virtual network resource in address space 10.0.0.0/16. Use location and resource group name
resource "azurerm_network_security_rule" "name_3" {
  name                = "myTFResourceGroup"
  resource_group_name  = azurerm_resource_group.rg.name
  priority               = 100
  direction              = "Inbound"
  access                 = "Allow"
  protocol               = "Tcp"
  source_port_range      = "*"
  destination_port_range = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name  = azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.name_2.name
}

# create subnet resource, with address prefix 10.0.1.0/24. Use virtual network name and the resource group name
resource "azurerm_subnet" "name_4" {
  name                 = "myTFResourceGroup"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_0.name
  address_prefix       = "10.0.2.0/24"
  address_prefix_count = 3
}

# resource block of public ip. Use allocation method static and sku standard. Use resource group name and location
resource "azurerm_public_ip" "name_5" {
  name                         = "myTFResourceGroup"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
}

