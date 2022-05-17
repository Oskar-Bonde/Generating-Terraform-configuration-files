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

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group
resource "azurerm_resource_group" "name_3" {
  name     = "myTFResourceGroup_resource_group_rg_azure_resource_group_rg_azure_resource_group_rg"
  location = "westus2"
}

# data block, azurem client config
resource "azurerm_storage_account" "name_4" {
  name                = "myTFResourceGroup_storage_account"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_storage_container" "name_5" {
  name                  = "myTFResourceGroup_storage_container"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_4.name
  container_access_type = "private"
}

# resource block called bot channel direct line speech. Use name and location from bot_channels_registration. For cognitive service location and access key use cognitive account. Assign resource group name
resource "azurerm_storage_container" "name_6" {
  name                  = "myTFResourceGroup_storage_container"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_4.name
  container_access_type = "private"
}

