terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure

provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_policy"
  location = "westus2"
}

# iothub resource block
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_policy_rule"
  location = "westus2"
}

