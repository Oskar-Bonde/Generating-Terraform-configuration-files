resource "azurerm_virtual_network" "name_0" {
  name                = "myTFResourceGroup"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

# Provider block with azure
resource "azurerm_subnet" "name_1" {
  name                 = "myTFResourceGroup"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_0.name
  address_prefix       = "10.0.1.0/24"
}

# make resource group
resource "azurerm_public_ip" "name_2" {
  name                         = "myTFResourceGroup"
  location                     = "westus2"
  resource
}

# create cognitive account resource
}

