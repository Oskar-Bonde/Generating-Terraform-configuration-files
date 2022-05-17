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

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group
resource "azurerm_resource_group" "name_3" {
  name     = "myTFResourceGroup_user_password_project"
  location = "westus2"
}

# data block, azurem client config
resource "azurerm_resource_group" "name_5" {
  name     = "myTFResourceGroup_user_password_project_iam_binding"
  location = "westus2"
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_resource_group" "name_5" {
  name     = "myTFResourceGroup_user_password_project_iam_binding"
  location = "westus2"
}

