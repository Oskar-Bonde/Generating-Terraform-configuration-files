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
  domain_name_label = "myTFResourceGroup"
}

# create resource group, use name myTFResourceGroup in location westus2
resource "azurerm_network_interface" "name_2" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_security_group_id = azurerm_network_security_group.rg.id
}

