terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features block
provider "azurerm" {
  features {}
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup-policy"
  location = "westus2"
}

# data block, azurem client config
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup-policy-outbound"
  location = "westus2"
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup-policy-outbound-outbound"
  location = "westus2"
}

