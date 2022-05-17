resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_lb"
  location = "westus2"
}

# Provider block with features block
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_lb_lb"
  location = "westus2"
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup_lb_lb_tcp"
  location = "westus2"
}

# data block, azurem client config
resource "azurerm_resource_group" "name_3" {
  name     = "myTFResourceGroup_lb_tcp_lb"
  location = "westus2"
}

