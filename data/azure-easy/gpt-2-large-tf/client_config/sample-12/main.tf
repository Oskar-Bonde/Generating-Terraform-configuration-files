resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGrouppolicy"
  location = "westus2"
}

# Provider block with azure

resource "azurerm_public_ip" "name_1" {
  name                         = "myTFResourceGroup"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "dynamic"
}

# create resource group
resource "azurerm_network_interface" "name_2" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_security_group_id = azurerm_network_security_group.rg.id
}

# data block, azurem client config
resource "azurerm_network_interface_rule" "name_3" {
  name                = "myTFResourceGrouppolicy"
  resource_group_name = azurerm_resource_group.rg.name
  ip_address_pool_id = azurerm_network_interface.name_2.id
  ip_address_pool_id_list = azurerm_network_interface_rule.name_3.id
}

