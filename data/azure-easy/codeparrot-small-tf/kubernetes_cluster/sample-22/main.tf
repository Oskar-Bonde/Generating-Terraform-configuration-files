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
  initial_node_count = 1
  node_count          = 1
  kubernetes_version_type = "ClusterIP"
  enable_auto_scaling = true
  enable_binary_authorization = true

  #Optional
  #initial_node_count = 1
  #initial_node_count = 1

  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #initial_node_count = 1
  #initial_node_count = 1

  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0"

  #Optional
  #kubernetes_version = "1.8.0
}

