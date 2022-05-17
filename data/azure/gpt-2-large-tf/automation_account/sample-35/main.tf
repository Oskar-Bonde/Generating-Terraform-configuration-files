resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_resource_group"
  location = "westus2"
}

# Provider block with features block
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_resource_group_azure_resource_group"
  location = "westus2"
}

# create resource group and name it example. Set location to westeurope
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup_resource_group_azure_resource_group_azure_resource_group_rg"
  location = "westus2"
}

# resource block, create automation account. Set location to resource group example and use its name. Set sku name to Basic
resource "azurerm_virtual_network" "name_3" {
  name                = "myTFResourceGroup"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.1.0/24"]
}

