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
    kubernetes_version = "1.8.0"
    kubernetes_certificate = file("azure_cert.pem")
    kubernetes_certificate_key = file("azure_cert.pem")
    kubernetes_certificate_path = "/tmp/azure_cert.pem"
    kubernetes_key = file("azure_key.pem")
    kubernetes_certificate_path = "/tmp/azure_key.pem"
  }

  # create storage account
  storage_account {
    name = "test"
    resource_group_name = azurerm_resource_group.name_0.name
    location = "westus2"
  }

  # create storage container
  storage_container {
    name = "test"
    resource_group_name = azurerm_resource_group.name_0.name
    storage_account_name = azurerm_storage_account.test.name
    container_access_type = "private"
    container_access_config {
      name = "test"
      value = "test"
    }
  }

  # create storage container
  storage_container {
    name = "test"
    resource_group_name = azurerm_resource_group.name_0.name
    storage_account_name = azurerm_storage_account.test.name
    container_access_type = "public"
    container_access_config {
      name = "test"
      value = "test"
    }
  }

  # create storage container
  storage_account {
    name = "test"
    resource_group_name = azurerm_resource_group.name_0.name
    location = "westus2"
  }

  # create storage container
  storage_container {
    name = "test"
    resource_group_name = azurerm_resource_group.name_0.name
    storage_account_name = azurerm_storage_account.test.name
    container_access_type = "private"
    container_access_config {
      name = "test"
      value = "test"
    }
  }

  # create storage container
  storage_container {
    name = "test"
    resource_group_name = azurerm_resource_group.name_0.name
    storage_account_name = azurerm_storage_account.test.name
    container_access_type = "public"
    container_access_config {
      name = "test"
      value = "test"
    }
  }

  # create storage container
  storage_account {
    name = "test"
    resource_group_name = azurerm_resource_group.name_0.name
    location = "westus2"
  }

  # create storage container
  storage_container {
    name = "test"
    resource_group_name = azurerm_resource_group.name_0.name
    storage_account_name = azurerm_storage_account.test.name
    container_access_type = "private"
    container_access_config {
      name = "test"
      value = "test"
    }
  }

  # create storage container
  storage_container {
    name = "test"
    resource_group_name = azurerm_resource_group.name_0.name
    storage_account_name = azurerm_storage_account.test.name
    container_access_type = "public"
    container_access_config {
      name = "test"
      value = "test"
}

