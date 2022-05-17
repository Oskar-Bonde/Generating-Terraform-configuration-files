resource "azurerm_resource_group" "name_0" {
  name     = "myTFuser"
  location = "westus2"
}

# Provider block with features block
resource "azurerm_resource_group" "name_1" {
  name     = "myTFpassword"
  location = "westus2"
}

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_2" {
  name     = "myTFuser_password"
  location = "westus2"
}

# iothub with sku name S1 and capacity 1. Use resource group name and location
resource "azurerm_resource_group" "name_3" {
  name     = "myTFpassword_project"
  location = "westus2"
}

