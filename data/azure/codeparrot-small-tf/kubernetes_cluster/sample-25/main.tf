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
  name     = "example"
  location = "westus2"
}

# kubernetes cluster. Use dns prefix exampleaks1, create a default node pool with 1 node count and vm size Standard_D2_v2. Make identity SystemAssigned
# and add to existing resource group
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "exampleaks1"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name

  kubernetes_version = "v1.17.0"

  # Set kubernetes version to 1.17.0
  # https://kubernetes.io/docs/admin/reference/rest/v1alpha1/cluster-autoscaler#versions
  initial_node_count = 1

  # Set kubernetes version to 1.17.0
  # https://kubernetes.io/docs/admin/reference/rest/v1alpha1/cluster-autoscaler#versions
  node_count = 1

  # Set kubernetes version to 1.17.0
  # https://kubernetes.io/docs/admin/reference/rest/v1alpha1/cluster-autoscaler#versions
  vm_size = "Standard_DS2_v2"

  # Set kubernetes version to 1.17.0
  # https://kubernetes.io/docs/admin/reference/rest/v1alpha1/cluster-autoscaler#versions
  kubernetes_version = "v1.17.0"

  # Set kubernetes version to 1.17.0
  # https://kubernetes.io/docs/admin/reference/rest/v1alpha1/cluster-autoscaler#versions
  initial_node_count = 1

  # Set kubernetes version to 1.17.0
  # https://kubernetes.io/docs/admin/reference/rest/v1alpha1/cluster-autoscaler#versions
  node_pool_machine_type = "Standard_DS2_v2"

  # Set kubernetes version to 1.17.0
  # https://kubernetes.io/docs/admin/reference/rest/v1alpha1/cluster-autoscaler#versions
  kubernetes_version = "v1.17.0"

  # Set kubernetes version to 1.17.0
  # https://kubernetes.io/docs/admin/reference/rest/v1alpha1/cluster-autoscaler#versions
  initial_node_count = 1

  # Set kubernetes version to 1.17.0
  # https://kubernetes.io/docs/admin/reference/rest/v1alpha1/cluster-autoscaler#versions
  node_pool_initial_node_count = 1

  # Set kubernetes version to 1.17.0
  # https://kubernetes.io/docs/admin/reference/rest/v1alpha1/cluster-autoscaler#versions
  kubernetes_version = "v1.17.0"

  # Set kubernetes version to 1.17.0
  # https://kubernetes.io/docs/admin/reference/rest/v1alpha1/cluster-autoscaler#versions
  initial_node_count = 1

  # Set kubernetes version to 1.17.0
  # https://kubernetes.io/docs/admin/reference/rest/v1alpha1/cluster-autoscaler#versions
  node_pool_machine_type = "Standard_DS3_v2"

  # Set kubernetes version to 1.17.0
  # https://kubernetes.io/docs/admin/reference/rest/v1alpha1/cluster-autoscaler#versions
  kubernetes_version = "v1.17.0"

  # Set kubernetes version to 1.17.0
  # https://kubernetes.io/docs/admin/reference/rest/v
}

