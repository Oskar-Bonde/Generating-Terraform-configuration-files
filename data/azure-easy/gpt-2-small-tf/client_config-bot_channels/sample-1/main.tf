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
    client_config_file = "${var.client_config_file}"
  }
}

# create bot channels registration resource
}

