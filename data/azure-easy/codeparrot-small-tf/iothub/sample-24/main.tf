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
  name     = "myTFResourceGroup2"
  location = "westus2"
}

# iothub resource blockvariable
variable "name_1" {
  type = "map"
  default = {
    name = "subnet-01"
    address_prefixes = ["10.0.0.0/24"]
  }
}

