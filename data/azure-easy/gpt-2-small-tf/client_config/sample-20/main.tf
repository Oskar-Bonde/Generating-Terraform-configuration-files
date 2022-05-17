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
    client_secret                                  = "${var.client_secret}"
    client_region                                   = "${var.region}"
    client_az                                        = "${var.az}"
    client_az_count                                   = "${var.az_count}"
    client_az_count_format                              = "${var.az_count_format}"
    client_az_count_format_format                         = "${var.az_count_format_format}"
    client_az_count_format_format_format_format                = "${var.az_count_format_format_format}"
    client_az_count_format_format_format_format_format           = "${var.az_count_format_format_format_format}"
    client_az_count_format_format_format_format_format           = "${var.az_count_format_format_format_format}"
    client_az_count_format_format_format_format_format           = "${var.az_count_format_format_format_format}"
    client_az_count_format_format_format_format_format            = "${var.az_count_format_format_format_format}"
    client_az_count_format_format_format_format_format_           = "${var.az_count_format_format_format_format}"
    client_az_count_format_format_format_format_format_          = "${var.az_count_format_format_format_format}"
    client_az_count_format_format_format_format_format_          = "${var.az_count_format_format_format_format}"
    client_az_count_format_format_format_format_format_          = "${var.az
}

