resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_resource_group"
  location = "westus2"
}

# Provider block with features block
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_resource_group_azure_resource_group"
  location = "westus2"
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup_resource_group_resource_group"
  location = "westus2"
}

# a virtual network resource in address space 10.0.0.0/16. Use location and resource group name
resource "azurerm_virtual_network" "name_3" {
  name                = "myTFResourceGroup"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

# create subnet resource, with address prefix 10.0.1.0/24. Use virtual network name and the resource group name
resource "azurerm_subnet" "name_4" {
  name                 = "myTFResourceGroup"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_3.name
  address_prefix       = "10.0.1.0/24"
  address_prefix_type = "INTERNAL"
}

# resource block of public ip. Use allocation method static and sku standard. Use resource group name and location
resource "azurerm_public_ip" "name_5" {
  name                         = "myTFResourceGroup"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
}

# resource block with firewall. Create ip configuration block, assign subnet id and public ip id. Assign resource group location and name. Set sku tier to Standard and sku name to AZFW_Hub
resource "azurerm_public_ip" "name_6" {
  name                         = "myTFResourceGroup"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
}
