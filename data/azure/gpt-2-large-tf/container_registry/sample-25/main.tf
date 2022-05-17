resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_user"
  location = "westus2"
}

# Provider block with features block
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_password"
  location = "westus2"
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup_user_password"
  location = "westus2"
}

# create container registry resource. Assign resource group name and location. Set sku to premium and admin enabled to false. Inside a georeplications block, set location to East US and enable zone reduncancy
resource "azurerm_resource_group" "name_3" {
  name     = "myTFResourceGroup_user_password_project"
  location = "westus2"
}

