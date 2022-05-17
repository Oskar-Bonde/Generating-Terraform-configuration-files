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
resource "azurerm_resource_group" "name_1" {
  name     = "example-resources"
  location = "westus"
}

# data block, azurem client config file, and terraform will download
# the resource group and place it in the terraform workspace
resource "azurerm_resource_group" "name_1" {
  name     = "example-resources"
  location = "westus"
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name to get the resource id
resource "azurerm_bot_application_registration" "name_2" {
  name                = "example-resources"
  location            = "westus"
  resource_group_name = azurerm_resource_group.name_1.name
  sku                 = "West US"
  tags                = {
    environment = "Development"
  }
}

