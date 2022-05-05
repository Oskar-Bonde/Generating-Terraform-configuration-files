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

# make resource groupresource group accessible
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create cognitive account resourcevariable
resource "azurerm_resource_group_parameter" "name_1" {
  name                 = "azure_cognitive_account_name"
  location             = "westus2"
  resource_group_name  = azurerm_resource_group.rg.name
  value                = "tf-test-azure-cognitive-account"
}

