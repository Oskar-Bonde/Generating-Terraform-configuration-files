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
  name     = "${var.resource_group_name}"
  location = "${var.location}"
}

# data block, azurem client config
data "azurerm_client_config" "name_1" {}

# create service principal
resource "azurerm_azuread_application" "name_2" {
  name = "${var.service_principal_name}"
}

