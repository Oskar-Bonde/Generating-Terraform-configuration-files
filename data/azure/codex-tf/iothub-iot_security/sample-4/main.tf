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

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "acctestRG-%d"
  location = "%s"
}

# iothub with sku name S1 and capacity 1. Use resource group name and location
resource "azurerm_iothub" "name_1" {
  name                = "acctestIoTHub-%d"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location

  sku {
    name     = "S1"
    capacity = "1"
  }

  tags = {
    purpose = "testing"
  }
}

# iot security solution, assign display name and name. Use iothub id and resrouce group name and location
resource "azurerm_iot_security_solution" "name_2" {
  solution_name = "acctest-IoTSecuritySolution-%d"
  resource_group_name = azurerm_resource_group.name_0.name
  location = azurerm_resource_group.name_0.location
  iot_hubs = [azurerm_iothub.name_1.id]

  display_name = "acctest-IoTSecuritySolution-%d"
}

