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

# make resource group 
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# create cognitive account resourceter
resource "azurerm_cosmosdb_account" "name_2" {
  name                = "cognitive"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = "westus2"
  account_type        = "Standard_LRS"
}

