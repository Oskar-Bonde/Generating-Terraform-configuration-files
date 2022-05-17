resource "azurerm_virtual_network" "name_0" {
  name                = "myTFResourceGroup"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

# Provider block with azure provider
resource "azurerm_subnet" "name_1" {
  name                 = "myTFResourceGroup"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_0.name
  address_prefix       = "10.0.0.0/24"
  address_prefix_count = 3
}

# create resource group
resource "azurerm_network_security_group" "name_2" {
  name                = "myTFResourceGroup"
  location            = "
}

# a virtual network resource
}

# create subnet resource
}

# resource block of public ip
}

