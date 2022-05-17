terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure

resource "azurerm_public_ip" "name_4" {
  name                         = "myTFResourceGroup"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
}

# create resource group
resource "azurerm_network_interface" "name_1" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_security_group_id = azurerm_network_security_group.rg.id
}

# a virtual network resource
resource "azurerm_network_security_rule" "name_2" {
  name                        = "myTFResourceGroup-egress"
  priority                    = 1
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.rg.name
  network_security_group_id = azurerm_network_security_group.rg.id
}

# create subnet resource
resource "azurerm_subnet" "name_3" {
  name                 = "myTFResourceGroup-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.rg.name
  address_prefix       = "10.0.0.0/16"
}

# resource block of public ip
resource "azurerm_public_ip" "name_4" {
  name                = "myTFResourceGroup-ip"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
}

