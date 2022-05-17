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

# managed disk resource. Storage account type is standard LRS, create option empty and disk size is 1 gb. Use resource group name and location
# Terraform configuration file
# Terraform block with azure provider
resource "azurerm_virtual_network" "name_3" {
  name                = "myTFResourceGroup-vm"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.1.0/24"]
}

