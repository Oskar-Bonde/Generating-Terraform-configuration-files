terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure

resource "azurerm_public_ip" "name_0" {
  name                         = "myTFResourceGroup"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
}

# make resource group
resource "azurerm_network_interface" "name_1" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_security_group_id = azurerm_network_security_group.rg.id
}

# create cognitive account resource
resource "azurerm_network_interface_rule" "name_2" {
  name                = "myTFResourceGroup-rule"
  resource_group_name = azurerm_resource_group.rg.name
  ip_address_pool_id = azurerm_network_interface_pool.rg.id
  priority               = 100
  direction              = "Inbound"
  access                 = "Allow"
  protocol               = "Tcp"
  source_port_range      = "*"
  destination_port_range = "22"
  source_address_pool_id = azurerm_network_security_group.rg.id
  destination_address_pool_id = azurerm_network_security_group.rg.id
}

