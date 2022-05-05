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
  name     = "myTFResourceGroupVariable"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

# create storage account resource
resource "azurerm_storage_account" "name_1" {
  name                     = "mytfstorageaccount"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create advanced threat protection resource
resource "azurerm_storage_account_protection_rule" "name_2" {
  name                     = "mytfstorageaccountprotectionrule"
  storage_account_id      = azurerm_storage_account.name_1.id
  protection_rule_id = "mytfrule"
}

