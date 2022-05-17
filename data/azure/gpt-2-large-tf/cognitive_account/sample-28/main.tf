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
  name     = "myTFResourceGroup_lb_ip"
  location = "westus2"
}

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group
resource "azurerm_storage_account" "name_3" {
  name                = "myTFResourceGroup_storage_account"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

