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

# create resource group and name it example. Set location to westeurope
resource "azurerm_resource_group" "name_0" {
  name     = "exampleRG"
  location = "westeurope"
}

# resource block, create automation account. Set location to resource group example and use its name. Set sku name to Basic# resource group.
resource "azurerm_resource_group_iam_member" "name_1" {
  resource_group_id = azurerm_resource_group.name_0.id
  role                = "roles/iam.workloadIdentityUser"
  member              = "serviceAccount:${azurerm_service_account.example.email}"
}

