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
  name     = "myTFResourceGroup"
  location = "westus2"
}

# data block, azurem client config
data "template_file" "name_1" {
  template = "${file("${path.module}/client.yml")}"

  vars {
    client_secret = "${file("${path.module}/client.yml")}"
  }
}

# create bot channels registration resource
resource "azurerm_client_config_binding" "name_2" {
  client_config_binding_name = "client-config-binding-${var.client_config_binding_name}"
  client_config_binding_location = "westus2"
}

