terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFRG"
  location = "westus2"
}

# make resource group private
resource "azurerm_public_ip" "name_1" {
  name                         = "pipPublicIP"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.name_0.name
  allocation_method            = "Static"
}

# create cognitive account resource
resource "azurerm_cosmosdb_account" "name_2" {
  name                = "cosmosdbaccount"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = "westus2"
  account_type        = "Standard_LRS"
}

