resource "azurerm_resource_group" "name_0" {
  name     = "myTFuser"
  location = "westus2"
}

# Provider block with features block
resource "azurerm_resource_group" "name_1" {
  name     = "myTFpassword"
  location = "westus2"
}

# create resource group, use name myTFResourceGroup in location westus2
resource "azurerm_resource_group" "name_2" {
  name     = "myTFuser_password"
  location = "westus2"
}

