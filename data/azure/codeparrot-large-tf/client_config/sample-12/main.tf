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
data "template_file" "name_1" {
  template = file("${path.module}/resources/azurem.json")

  vars = {
    azurerm_client_config_file_path = "${path.module}/resources/azurem.json"
  }
}

