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

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "ClusterIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "NodeIP"
  }

  kubernetes_config {
    kubernetes_version = "1.8.0
}

