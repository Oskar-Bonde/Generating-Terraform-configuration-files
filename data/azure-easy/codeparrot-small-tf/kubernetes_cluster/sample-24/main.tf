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

  # kubernetes_endpoint = "https://${azurerm_resource_group.name_0.location}.svc.azure.com"
  # kubernetes_ca_certificate = "${file("${path.module}/data/azurerm_kubernetes_cluster_ca.crt")}"
  # kubernetes_certificate = "${file("${path.module}/data/azurerm_kubernetes_cluster_ca.key")}"

  kubernetes_default_node_pool {
    name                = "default"
    node_count            = 1
    vm_size               = "Standard_DS2_v2"
    os_disk_size_gb       = "50"
    image_publisher       = "MicrosoftWindowsServer"
    image_offer             = "WindowsServer"
    image_sku             = "2012-R2-Datacenter"
    image_version         = "latest"
  }

  kubernetes_default_node_pool {
    name                = "default"
    node_count            = 2
    vm_size               = "Standard_DS2_v2"
    os_disk_size_gb       = "50"
    image_publisher       = "MicrosoftWindowsServer"
    image_offer             = "WindowsServer"
    image_sku             = "2012-R2-Datacenter"
    image_version         = "latest"
  }

  kubernetes_default_node_pool {
    name                = "default"
    node_count            = 3
    vm_size               = "Standard_DS2_v2"
    os_disk_size_gb       = "50"
    image_publisher       = "MicrosoftWindowsServer"
    image_offer             = "WindowsServer"
    image_sku             = "2012-R2-Datacenter"
    image_version         = "latest"
  }

  kubernetes_default_node_pool {
    name                = "default"
    node_count            = 4
    vm_size               = "Standard_DS2_v2"
    os_disk_size_gb       = "50"
    image_publisher       = "MicrosoftWindowsServer"
    image_offer             = "WindowsServer"
    image_sku             = "2012-R2-Datacenter"
    image_version         = "latest"
  }

  kubernetes_default_node_pool {
    name                = "default"
    node_count            = 5
    vm_size               = "Standard_DS2_v2"
    os_disk_size_gb       = "50"
    image_publisher       = "MicrosoftWindowsServer"
    image_offer             = "WindowsServer"
    image_sku             = "2012-R2-Datacenter"
    image_version         = "latest"
  }

  kubernetes_default_node_pool {
    name                = "default"
    node_count            = 6
    vm_size               = "Standard_DS2_v2"
    os_disk_size_gb       = "50"
    image_publisher       = "MicrosoftWindowsServer"
    image_offer             = "WindowsServer"
    image_sku             = "2012-R2-Datacenter"
    image_version         = "latest"
  }

  kubernetes_default_node_pool {
    name                = "default"
    node_count            = 7
    vm_size               = "Standard_DS2_v2"
    os_disk_size_gb       = "50"
    image_publisher      
}

