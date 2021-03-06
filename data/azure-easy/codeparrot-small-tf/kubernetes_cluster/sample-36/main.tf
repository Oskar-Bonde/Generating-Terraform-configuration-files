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

# kubernetes cluster resourceresource group
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "myTFKubernetesCluster"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  kubernetes_version = "1.8.0"

  # kubernetes configuration
  kubernetes_config {
    namespace = "default"

    kubernetes_version = "1.8.0"

    kubernetes_certificate_authority {
      name     = "myCA"
      value     = "myCA"
    }

    kubernetes_certificate_authority {
      name     = "myCA2"
      value     = "myCA2"
    }

    kubernetes_certificate_authority {
      name     = "myCA3"
      value     = "myCA3"
    }

    kubernetes_certificate_authority {
      name     = "myCA4"
      value     = "myCA4"
    }

    kubernetes_certificate_authority {
      name     = "myCA5"
      value     = "myCA5"
    }

    kubernetes_certificate_authority {
      name     = "myCA6"
      value     = "myCA6"
    }

    kubernetes_certificate_authority {
      name     = "myCA7"
      value     = "myCA7"
    }

    kubernetes_certificate_authority {
      name     = "myCA8"
      value     = "myCA8"
    }

    kubernetes_certificate_authority {
      name     = "myCA9"
      value     = "myCA9"
    }

    kubernetes_certificate_authority {
      name     = "myCA10"
      value     = "myCA10"
    }

    kubernetes_certificate_authority {
      name     = "myCA11"
      value     = "myCA11"
    }

    kubernetes_certificate_authority {
      name     = "myCA12"
      value     = "myCA12"
    }

    kubernetes_certificate_authority {
      name     = "myCA13"
      value     = "myCA13"
    }

    kubernetes_certificate_authority {
      name     = "myCA14"
      value     = "myCA14"
    }

    kubernetes_certificate_authority {
      name     = "myCA15"
      value     = "myCA15"
    }

    kubernetes_certificate_authority {
      name     = "myCA16"
      value     = "myCA16"
    }

    kubernetes_certificate_authority {
      name     = "myCA17"
      value     = "myCA17"
    }

    kubernetes_certificate_authority {
      name     = "myCA18"
      value     = "myCA18"
    }

    kubernetes_certificate_authority {
      name     = "myCA19"
      value     = "myCA19"
    }

    kubernetes_certificate_authority {
      name     = "myCA2"
      value     = "myCA2"
    }

    kubernetes_certificate_authority {
      name     = "myCA3"
      value     = "myCA3"
    }

    kubernetes_certificate_authority {
      name     = "myCA4"
      value     = "myCA4"
    }

    kubernetes_certificate_authority {
      name     = "myCA5"
      value     = "myCA5"
    }

    kubernetes_certificate_authority {
      name     = "myCA6"
      value     = "myCA6"
    }

    kubernetes_certificate_authority {
      name     = "myCA7"
      value     = "myCA7"
    }

    kubernetes_certificate_authority {
      name     = "myCA8"
      value     = "myCA8"
    }

    kubernetes_certificate
}

