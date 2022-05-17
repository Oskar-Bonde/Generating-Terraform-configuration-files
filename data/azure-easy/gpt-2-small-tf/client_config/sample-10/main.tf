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
    client_secret                                 = "${var.client_secret}"
    client_region                                  = "${var.region}"
    client_network                                 = "${var.network}"
    client_subnet                                 = "${var.subnet}"
    client_vpc                                     = "${var.vpc}"
    client_az                                       = "${var.az}"
    client_subnet                                  = "${var.subnet}"
    client_vpc_cidr                                  = "${var.vpc_cidr}"
    client_subnet                                   = "${var.subnet}"
    client_vpc_cidr                                   = "${var.vpc_cidr}"
    client_az                                        = "${var.az}"
    client_subnet                                  = "${var.subnet}"
    client_vpc_cidr                                  = "${var.vpc_cidr}"
    client_subnet                                  = "$
}

