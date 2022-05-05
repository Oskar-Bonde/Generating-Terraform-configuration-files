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

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_test"
  location = "westus2"
}

# resource block. Create azurerm imagevariable
resource "azurerm_image_variable" "name_1" {
  name                 = "myosimage"
  location             = "westus2"
  resource_group_name  = azurerm_resource_group.rg.name
  publisher_name      = "Microsoft.Azure.Extensions"
  type                 = "CustomScript"
  type_handler_version = "2.0"
  type_handler_version_name = "2.0"
  auto_upgrade_minor_version = true
  sku {
    name     = "Standard_Small"
    tier     = "Standard"
    capacity = 2
  }
}

