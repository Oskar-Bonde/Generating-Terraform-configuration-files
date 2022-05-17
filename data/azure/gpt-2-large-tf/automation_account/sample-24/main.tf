resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_user"
  location = "westus2"
}

# Provider block with features block
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_password"
  location = "westus2"
}

# create resource group and name it example. Set location to westeurope
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup_user_password"
  location = "westus2"
}

# resource block, create automation account. Set location to resource group example and use its name. Set sku name to Basic
resource "azurerm_resource_group" "name_3" {
  name     = "myTFResourceGroup_password_user"
  location = "westus2"
}

