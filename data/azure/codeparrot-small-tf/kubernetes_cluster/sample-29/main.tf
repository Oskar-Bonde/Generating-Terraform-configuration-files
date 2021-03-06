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

  kubernetes_version = "1.8.0"
  kubernetes_endpoint = "https://${azurerm_resource_group.name_0.location}.svc.azure.com"

  # Set kubernetes.io/cluster/${name} as default
  kubernetes_config {
    namespace = "default"

    ip_allocation_policy {
      name = "pods"
    }

    ip_allocation_policy {
      name = "services"
    }

    kubernetes_io_cluster {
      resource_group_name = azurerm_resource_group.name_0.name
      vm_size               = "Standard_D2_v2"
    }
  }
}

