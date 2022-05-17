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
  name     = "example-resources"
  location = "westus"
}

# data block, azurem client config file, and terraform state file
data "azurerm_client_config" "name_1" 
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_bot_channel_registration" "name_2" {
  name                = "example-registration"
  location            = "West US"
  resource_group_name = azurerm_resource_group.rg.name
  bot_type            = "bot"
  depends_on          = [azurerm_resource_group.name_0]
}

