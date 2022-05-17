resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_user"
  location = "westus2"
}

# Provider block with features block
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_password"
  location = "westus2"
}

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup_password_user"
  location = "westus2"
}

# iothub with sku name S1 and capacity 1. Use resource group name and location
resource "azurerm_resource_group" "name_3" {
  name     = "myTFResourceGroup_password_user_password_user"
  location = "westus2"
}

