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

# create resource groupresource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroupResourceGroup"
  location = "westus2"
}

# kubernetes cluster resource
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "myTFKubernetesCluster"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  kubernetes_version = "1.8.0"

  # kubernetes configuration
  kubernetes_version = "1.8.0"

  # kubernetes configuration
  kubernetes_certificate_authority {
    name     = "myCA"
    value     = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/kubernetes/0.1.0/kubernetes.yaml"
    comment = "Your Kubernetes CA"
  }

  # kubernetes configuration
  kubernetes_certificate_authority {
    name     = "myCA"
    value     = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/kubernetes/0.1.0/kubernetes.yaml"
    comment = "Your Kubernetes CA"
  }

  # kubernetes configuration
  kubernetes_certificate_authority {
    name     = "myCA"
    value     = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/kubernetes/0.1.0/kubernetes.yaml"
    comment = "Your Kubernetes CA"
  }

  # kubernetes configuration
  kubernetes_certificate_authority {
    name     = "myCA"
    value     = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/kubernetes/0.1.0/kubernetes.yaml"
    comment = "Your Kubernetes CA"
  }

  # kubernetes configuration
  kubernetes_certificate_authority {
    name     = "myCA"
    value     = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/kubernetes/0.1.0/kubernetes.yaml"
    comment = "Your Kubernetes CA"
  }

  # kubernetes configuration
  kubernetes_certificate_authority {
    name     = "myCA"
    value     = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/kubernetes/0.1.0/kubernetes.yaml"
    comment = "Your Kubernetes CA"
  }

  # kubernetes configuration
  kubernetes_certificate_authority {
    name     = "myCA"
    value     = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/kubernetes/0.1.0/kubernetes.yaml"
    comment = "Your Kubernetes CA"
  }

  # kubernetes configuration
  kubernetes_certificate_authority {
    name     = "myCA"
    value     = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/kubernetes/0.1.0/kubernetes.yaml"
    comment = "Your Kubernetes CA"
  }

  # kubernetes configuration
  kubernetes_certificate_authority {
    name     = "myCA"
    value     = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/kubernetes/0.1.0/kubernetes.yaml"
    comment = "Your Kubernetes CA"
  }

  # kubernetes configuration
  kubernetes_certificate_authority {
    name     = "myCA"
    value     = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/kubernetes/0.1.0/kubernetes.yaml"
    comment = "Your Kubernetes CA"
  }

  # kubernetes configuration
  kubernetes_certificate_authority {
    name     = "myCA"
    value     =
}

