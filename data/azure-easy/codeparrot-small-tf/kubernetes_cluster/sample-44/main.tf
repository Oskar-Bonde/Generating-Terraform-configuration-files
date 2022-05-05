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
  kubernetes_version    = "1.8.0"
  kubernetes_endpoint = "https://${azurerm_resource_group.name_0.location}.svc.azure.com"

  #Optional
  initial_node_count = 1
  min_count = 1
  max_count = 10

  #Optional
  enable_binary_authorization = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_pod_security_policy = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_pod_security_policy_by_default = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_pod_security_policy_by_default = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_pod_security_policy_by_default = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_pod_security_policy_by_default = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_pod_security_policy_by_default = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_pod_security_policy_by_default = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_pod_security_policy_by_default = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_pod_security_policy_by_default = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_pod_security_policy_by_default = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_pod_security_policy_by_default = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_pod_security_policy_by_default = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_pod_security_policy_by_default = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_pod_security_policy_by_default = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_pod_security_policy_by_default = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_pod_security_policy_by_default = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_pod_security_policy_by_default = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_pod_security_policy_by_default = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_pod_security_policy_by_default = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_pod_security_policy_by_default = true

  #Optional
  enable_binary_authorization_by_default = true

  #Optional
  enable_pod_
}

