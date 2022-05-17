resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# Provider block with azure provider
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# a virtual network resource
resource "azurerm_virtual_network" "name_3" {
  name                = "myTFResourceGroup"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

# create subnet resource
resource "azurerm_subnet" "name_4" {
  name                 = "myTFResourceGroup"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_3.name
  address_prefix       = "10.0.1.0/24"
}

# resource block of public ip
}

# resource block with firewall
}

