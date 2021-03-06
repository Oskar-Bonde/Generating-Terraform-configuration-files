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
  name                = "test"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  kubernetes_version = "1.8.0"

  # kubernetes configuration
  kubernetes_config {
    namespace = "default"

    # kubernetes configuration for the Kubernetes API Server
    kubernetes_version = "1.8.0"

    # kubernetes configuration for the Kubernetes API Server
    kubernetes_config {
      namespace = "default"

      # kubernetes configuration for the Kubernetes API Server
      kubernetes_version = "1.8.0"
    }
  }

  # Create the Kubernetes cluster
  # https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-using-azure-kubernetes-engine#create_a_kubernetes_cluster
  # https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-using-azure-kubernetes-engine#create_a_kubernetes_cluster
  # https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-using-azure-kubernetes-engine#create_a_kubernetes_cluster
  # https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-using-azure-kubernetes-engine#create_a_kubernetes_cluster
  # https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-using-azure-kubernetes-engine#create_a_kubernetes_cluster
  # https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-using-azure-kubernetes-engine#create_a_kubernetes_cluster
  # https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-using-azure-kubernetes-engine#create_a_kubernetes_cluster
  # https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-using-azure-kubernetes-engine#create_a_kubernetes_cluster
  # https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-using-azure-kubernetes-engine#create_a_kubernetes_cluster
  # https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-using-azure-kubernetes-engine#create_a_kubernetes_cluster
  # https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-using-azure-kubernetes-engine#create_a_kubernetes_cluster
  # https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-using-azure-kubernetes-engine#create_a_kubernetes_cluster
  # https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-using-azure-kubernetes-engine#create_a_kubernetes_cluster
  # https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-using-azure-kubernetes-engine#create_a_kubernetes_cluster
  # https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-using-azure-kubernetes-engine#create_a_kubernetes_cluster
  # https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-using-azure-kubernetes-engine#create_a_kubernetes_cluster
  # https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-using-
}

