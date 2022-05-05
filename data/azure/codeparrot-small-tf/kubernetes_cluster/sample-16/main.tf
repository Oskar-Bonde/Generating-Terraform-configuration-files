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

# kubernetes cluster. Use dns prefix exampleaks1, create a default node pool with 1 node count and vm size Standard_D2_v2. Make identity SystemAssignedresource is required
# azurerm_kubernetes_cluster.name_1.io -nodepool=azure.io/cluster/example.com -namespace=default -nodepool=azure.io/cluster/example.com -metadata=https://azure.microsoft.com/en-us/documentation/articles/kubernetes-cluster#nodepool-machine-type

# Create kubernetes cluster with default node pool
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "example"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
  kubernetes_version = "1.8.0"

  # Set kubernetes version to 1.8.0
  kubernetes_version = "1.8.0"

  # Create default node pool
  node_pool {
    name            = "default"
    vm_size         = "Standard_D2_v2"
    os_disk_size_gb = "1023"
    image_publisher = "Microsoft.Azure.Extensions"
    image_offer     = "UbuntuServer"
    image_sku         = "16.04.0-LTS"
    os_disk_size_gb = "1023"
    os_disk_type    = "Standard_D2_v2"
    admin_username = "azureuser"
    admin_password = "Password1234!"
    custom_data    = base64encode("${file("azure_cluster_example.azurerm.yaml"))}"
  }

  # Create default node pool with default node pool
  node_pool {
    name            = "default-node-pool"
    vm_size         = "Standard_D2_v2"
    os_disk_size_gb = "1023"
    image_publisher = "Microsoft.Azure.Extensions"
    image_offer     = "UbuntuServer"
    image_sku         = "16.04.0-LTS"
    os_disk_size_gb = "1023"
    os_disk_type    = "Standard_D2_v2"
    admin_username = "azureuser"
    admin_password = "Password1234!"
    custom_data    = base64encode("${file("azure_cluster_example.azurerm.yaml"))}"
  }

  # Create default node pool with default node pool
  node_pool {
    name            = "default-node-pool-1"
    vm_size         = "Standard_D2_v2"
    os_disk_size_gb = "1023"
    image_publisher = "Microsoft.Azure.Extensions"
    image_offer     = "UbuntuServer"
    image_sku         = "16.04.0-LTS"
    os_disk_size_gb = "1023"
    os_disk_type    = "Standard_D2_v2"
    admin_username = "azureuser"
    admin_password = "Password1234!"
    custom_data    = base64encode("${file("azure_cluster_example.azurerm.yaml"))}"
  }

  # Create default node pool with default node pool
  node_pool {
    name            = "default-node-pool-2"
    vm_size         = "Standard_D2_v2"
    os_disk_size_gb = "1023"
    image_publisher = "Microsoft.Azure.Extensions"
    image_offer     = "UbuntuServer"
    image_sku         = "16
}

