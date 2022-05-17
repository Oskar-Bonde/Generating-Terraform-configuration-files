resource "azurerm_virtual_network" "name_0" {
  name                = "myTFResourceGroup"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

# Provider block with features block
resource "azurerm_subnet" "name_1" {
  name                 = "myTFResourceGroup"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_0.name
  address_prefix       = "10.0.1.0/24"
  address_prefix_count = 3
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_public_ip" "name_2" {
  name                         = "myTFResourceGroup"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
  domain_name_label            = "myTFResourceGroup"
}

# data block, azurem client config
resource "azurerm_public_ip_address" "name_3" {
  name                = "myTFResourceGroup"
  resource_group_name = azurerm_resource_group.rg.name
  address_prefix       = "10.0.2.0/24"
  address_prefix_count = 3
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_network_interface" "name_4" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  ip_configuration {
    name                          = "myTFResourceGroup"
    subnet_id                     = azurerm_subnet.name_1.id
    private_ip_address_allocation = "static"
    public_ip_address_id          = azurerm_public_ip.name_2.id
  }
}

