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
  location = "West Europe"
}

# data block, azurem client config
data "azurerm_client_config" "name_1" {}

# data block, azurem subscription
data "azurerm_subscription" "name_2" {}

# data block, azurem provider
data "azurerm_provider" "name_3" {}

# data block, azurem provider features
data "azurerm_provider_features" "name_4" {}

# data block, azurem provider capabilities
data "azurerm_provider_capabilities" "name_17" {}

# data block, azurem provider capabilities
data "azurerm_provider_capabilities" "name_17" {}

# data block, azurem provider capabilities
data "azurerm_provider_capabilities" "name_17" {}

# data block, azurem provider capabilities
data "azurerm_provider_capabilities" "name_17" {}

# data block, azurem provider capabilities
data "azurerm_provider_capabilities" "name_17" {}

# data block, azurem provider capabilities
data "azurerm_provider_capabilities" "name_17" {}

# data block, azurem provider capabilities
data "azurerm_provider_capabilities" "name_17" {}

# data block, azurem provider capabilities
data "azurerm_provider_capabilities" "name_17" {}

# data block, azurem provider capabilities
data "azurerm_provider_capabilities" "name_17" {}

# data block, azurem provider capabilities
data "azurerm_provider_capabilities" "name_17" {}

# data block, azurem provider capabilities
data "azurerm_provider_capabilities" "name_17" {}

# data block, azurem provider capabilities
data "azurerm_provider_capabilities" "name_17" {}

# data block, azurem provider capabilities
data "azurerm_provider_capabilities" "name_17" {}

# data block, azurem provider capabilities
data "azurerm_provider_capabilities" "name_18"}

