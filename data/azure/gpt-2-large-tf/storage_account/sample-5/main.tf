resource "azurerm_storage_account" "name_0" {
  name                = "myTFResourceGroup"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# Provider block with features block
resource "azurerm_storage_container" "name_3" {
  name                  = "myTFResourceGroup"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_0.name
  container_access_type = "private"
}

# create resource group and name it atp example. Set location to west europe
resource "azurerm_storage_container" "name_3" {
  name                  = "myTFResourceGroup"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_0.name
  container_access_type = "private"
}

# create storage account resource. Use resource group name and location from atp-example. Use account tier standard and replication type to LRS
resource "azurerm_storage_container" "name_3" {
  name                  = "myTFResourceGroup"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_0.name
  container_access_type = "private"
}

