terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_3" {
  name     = "myTFRG"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_3" {
  name     = "myTFRG"
  location = "westus2"
}

# create cognitive account resourceter
resource "azurerm_cosmosdb_account" "name_2" {
  name                = "myTF${var.account_name}"
  resource_group_name = azurerm_resource_group.name_3.name
  location            = "westus2"
  account_type        = "Standard_LRS"
}

# data block, azurem client config
resource "azurerm_resource_group" "name_3" {
  name     = "myTF${var.account_name}"
  location = "westus2"
}

# create bot channels registration resource

}

