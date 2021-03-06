terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features blockresource "azurerm_resource_group" "rg_user" {
  name     = "myTFResourceGroup_user"
  location = "westus2"
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_user_rg"
  location = "westus2"
}

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_user_rg_user"
  location = "westus2"
}

