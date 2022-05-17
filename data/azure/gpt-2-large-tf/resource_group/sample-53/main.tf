resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_lb"
  location = "westus2"
}

# Provider block with features block
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_lb_lb"
  location = "westus2"
}

# create resource group, use name myTFResourceGroup in location westus2
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup_lb_tcp"
  location = "westus2"
}

