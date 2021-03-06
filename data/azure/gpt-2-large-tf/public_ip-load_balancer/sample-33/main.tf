resource "azurerm_virtual_machine" "name_0" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
}

# Provider block with features block
resource "azurerm_public_ip" "name_4" {
  name                         = "myTFResourceGroup"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
  domain_name_label            = "myTFResourceGroup"
}

# create resource group, use name example in location West Europe
resource "azurerm_network_interface" "name_2" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  ip_configuration {
    name                          = "myTFResourceGroup"
    subnet_id                     = azurerm_subnet.rg.id
    private_ip_address_allocation = "static"
  }
}

# create public ip resource, use static allocation method. Assign resource group name and location
resource "azurerm_public_ip" "name_4" {
  name                         = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
  domain_name_label            = "myTFResourceGroup"
}

# lb resource. In frontend ip configuration block, asssign name and public ip address id. Use resource group name and location
resource "azurerm_public_ip" "name_4" {
  name                         = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
  domain_name_label            = "myTFResourceGroup"
}

