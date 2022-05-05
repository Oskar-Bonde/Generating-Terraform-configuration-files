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
  name     = "myTFResourceGroup"
  location = "westus2"
}

# make iothub resourceresource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# iot security solution resourcevariable
variable "name_2" {
  type = "string"
  default = "ocid1.image.oc1.iad.aaaaaaa...b1a1b2c3d...4a6c5f5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6c5f6.aaaaaaa...b1a1b2c3d...4a6
}

