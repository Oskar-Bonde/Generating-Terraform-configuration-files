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
  name     = "myresources"
  location = "westus2"
}

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group
resource "azurerm_resource_group" "name_1" {
  name     = "mytcp"
  location = "westus2"
}

# data block, azurem client config
resource "azurerm_resource_group" "name_2" {
  name     = "mytcp_tcp"
  location = "westus2"
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_resource_group" "name_4" {
  name     = "mytcp_tcp_tcp_tcp"
  location = "westus2"
}

# resource block called bot channel direct line speech. Use name and location from bot_channels_registration. For cognitive service location and access key use cognitive account. Assign resource group name
resource "azurerm_resource_group" "name_4" {
  name     = "mytcp_tcp_tcp_tcp"
  location = "westus2"
}

