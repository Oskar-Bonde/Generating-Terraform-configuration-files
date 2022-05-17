terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# kubernetes cluster resource group
resource "azurerm_kubernetes_cluster" "name_2" {
  name                = "myTFCluster"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_1.name
  kubernetes_version = "1.14.7-gke.3"
  kubernetes_master_type = "n1-standard-1"
  dns_prefix          = "192.168.0.0/16"
}

