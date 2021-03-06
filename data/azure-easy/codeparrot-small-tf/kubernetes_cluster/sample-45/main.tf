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

# kubernetes cluster resource
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "myTFKubernetesCluster"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  kubernetes_version = "1.8.0"

  # kubernetes configuration
  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_endpoint = "https://${azurerm_resource_group.name_0.location}.svc.azure.com/aks"
  }

  # create storage account for the resource group
  storage_account_name = "mytfstorageaccount"

  # create storage account for the resource group
  storage_account_primary_access_key = "mytfprimaryaccesskey"

  # create storage account for the resource group
  storage_account_secondary_access_key = "mytfsecondaryaccesskey"
}

