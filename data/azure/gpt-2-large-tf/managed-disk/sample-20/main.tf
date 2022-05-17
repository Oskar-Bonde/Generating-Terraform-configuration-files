resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_resource_group"
  location = "westus2"
}

# Provider block with features block
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_resource_group_rg"
  location = "westus2"
}

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup_resource_group_rg_azure_resource_group"
  location = "westus2"
}

# managed disk resource. Storage account type is standard LRS, create option empty and disk size is 1 gb. Use resource group name and location
resource "azurerm_public_ip" "name_3" {
  name                         = "myTFResourceGroup"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "dynamic"
}

