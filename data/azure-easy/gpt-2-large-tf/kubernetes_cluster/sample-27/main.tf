terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure provider

provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_policy"
  location = "westus2"
}

# kubernetes cluster resource
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_policy_vm"
  location = "westus2"
}

