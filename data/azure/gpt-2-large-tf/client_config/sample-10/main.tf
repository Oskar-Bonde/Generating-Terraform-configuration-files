resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_resource_group"
  location = "westus2"
}

# Provider block with features block
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_resource_group_rg"
  location = "westus2"
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup_resource_group_rg_azure_resource_group_rg"
  location = "westus2"
}

# data block, azurem client config
resource "azurerm_resource_group" "name_3" {
  name     = "myTFResourceGroup_resource_group_rg_azure_resource_group_rg"
  location = "westus2"
}

