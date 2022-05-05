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

# resource block, create automation accountresource
resource "azurerm_automation_account_resource" "name_1" {
  name                = "testautomationaccountresource"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier        = "Standard"
  account_replication_type = "LRS"
  account_tier_name        = "Standard"
  account_kind            = "CustomScript"
  account_type            = "CustomScript"
  account_type_name        = "CustomScript"
  account_type_tier        = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_type_tier_name  = "Standard"
  account_type_replication_type = "LRS"
  account_
}

