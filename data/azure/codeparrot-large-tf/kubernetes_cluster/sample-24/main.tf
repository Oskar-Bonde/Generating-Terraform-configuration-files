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
  location = "westus"
}

# kubernetes cluster. Use dns prefix exampleaks1, create a default node pool with 1 node count and vm size Standard_D2_v2. Make identity SystemAssigned Identity a system-assigned identity and set the following environment variables:
# Terraform apply -var 'tectonic_azure_location' -var 'tectonic_azure_ssh_key' -var 'tectonic_azure_master_vm_size' -var 'tectonic_azure_worker_vm_size' -var 'tectonic_azure_etcd_vm_size' -var 'tectonic_azure_master_storage_type' -var 'tectonic_azure_master_node_count' -var 'tectonic_azure_worker_storage_type' -var 'tectonic_azure_etcd_storage_type' -var 'tectonic_azure_vnet_cidr_block'
# Terraform apply -var 'tectonic_azure_master_storage_type' -var 'tectonic_azure_master_node_storage_type' -var 'tectonic_azure_etcd_storage_type' -var 'tectonic_azure_vnet_cidr_block'
# Terraform apply -var 'tectonic_azure_vnet_cidr_block' -var 'tectonic_azure_etcd_storage_type' -var 'tectonic_azure_etcd_storage_type' -var 'tectonic_azure_master_storage_type'

# Kubernetes cluster
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "${var.tectonic_cluster_name}"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  location            = "${azurerm_resource_group.rg.location}"
  kubernetes_version = "${var.tectonic_azure_version}"
}

