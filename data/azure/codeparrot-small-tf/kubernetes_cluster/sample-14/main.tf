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
  name     = "myTFResourceGroup"
  location = "westus2"
}

# kubernetes cluster. Use dns prefix exampleaks1, create a default node pool with 1 node count and vm size Standard_D2_v2. Make identity SystemAssigned with AzureRM
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "exampleaks1"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name

  kubernetes_version = "1.20.0"

  # Set kubernetes.io/cluster/auth to work
  # https://cloud.google.com/kubernetes-engine/docs/how-to/install-azure-kubernetes-engine#installing_azure_kubernetes_engine_with_k8s_auth
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-azure-kubernetes-engine#installing_azure_kubernetes_engine_with_k8s_auth
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-azure-kubernetes-engine#installing_azure_kubernetes_engine_with_k8s_auth
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-azure-kubernetes-engine#installing_azure_kubernetes_engine_with_k8s_auth
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-azure-kubernetes-engine#installing_azure_kubernetes_engine_with_k8s_auth
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-azure-kubernetes-engine#installing_azure_kubernetes_engine_with_k8s_auth
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-azure-kubernetes-engine#installing_azure_kubernetes_engine_with_k8s_auth
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-azure-kubernetes-engine#installing_azure_kubernetes_engine_with_k8s_auth
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-azure-kubernetes-engine#installing_azure_kubernetes_engine_with_k8s_auth
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-azure-kubernetes-engine#installing_azure_kubernetes_engine_with_k8s_auth
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-azure-kubernetes-engine#installing_azure_kubernetes_engine_with_k8s_auth
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-azure-kubernetes-engine#installing_azure_kubernetes_engine_with_k8s_auth
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-azure-kubernetes-engine#installing_azure_kubernetes_engine_with_k8s_auth
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-azure-kubernetes-engine#installing_azure_kubernetes_engine_with_k8s_auth
  # https://cloud.google.com/kubernetes-engine/docs/how-to/installing-azure-kubernetes-engine#installing_azure_kubernetes_engine_with
}

