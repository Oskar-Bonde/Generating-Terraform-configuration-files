terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure
provider "azurerm" {
  version = "~> 2.0"
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "rg-name"
  location = "westus"
}

# kubernetes cluster resource
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "k8s-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  dns_prefix          = "k8s-dns"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  service_principal {
    client_id     = "service-principal-client-id"
    client_secret = "service-principal-client-secret"
  }

  network_profile {
    network_plugin    = "azure"
    dns_service_ip    = "10.0.0.10"
    docker_bridge_cidr = "172.17.0.1/16"
    service_cidr      = "10.0.0.0/16"
  }

  role_based_access_control {
    enabled = true
  }
}

