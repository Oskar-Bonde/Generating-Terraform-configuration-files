terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm
provider "azurerm" {
  features {}
}

# create resource groupvariable
resource "azurerm_resource_group_variable" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
  value     = "test"
}

# create cognitive account resource
resource "azurerm_resource_group_role" "name_1" {
  name                = "azurerm_rg_role"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_5.name
  role_type            = "Standard_LRS"
  account_tier             = "Standard"
}

# data block, azurem client configresource
data "azurerm_client_config" "name_2" {}

# create storage account resource
resource "azurerm_storage_account" "name_3" {
  name                = "mytfstorageaccount"
  resource_group_name = azurerm_resource_group.name_5.name
  location            = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create bot channels registration resource
resource "azurerm_resource_group_membership" "name_4" {
  resource_group_name = azurerm_resource_group.name_5.name
  location            = "westus2"
  membership_type     = "Subscription"
  members             = [azurerm_resource_group.name_5_member.name]
}

# resource block called bot channel direct line speechresource
resource "azurerm_resource_group" "name_5" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

