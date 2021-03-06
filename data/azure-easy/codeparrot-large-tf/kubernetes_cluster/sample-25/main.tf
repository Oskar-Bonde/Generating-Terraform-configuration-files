terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# kubernetes cluster resource group
resource "azurerm_kubernetes_cluster" "name_2" {
  name                = "myTFCluster"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_1.name
  kubernetes_version    = "1.21.6-gke.17"
  kubernetes_master_type = "n1-standard-1"
  kubernetes_node_type  = "n1-standard-2"
  kubernetes_node_minimum  = "1.5"
  kubernetes_node_maximum = "5"
  kubernetes_storage_account_type = "Standard_LRS"
  kubernetes_storage_primary_blob_endpoint = "https://storage.googleapis.com/hashicorp/providers/Microsoft.Storage/storageAccounts/blobServices/blobServices.blob%2Fv1.0.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices.blob%2Fv1.0.0/repositories/Microsoft.Storage/storageAccounts/blobServices
}

