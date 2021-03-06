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

# kubernetes cluster. Use dns prefix exampleaks1, create a default node pool with 1 node count and vm size Standard_D2_v2. Make identity SystemAssignedvariable and add to default node pool
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "exampleaks1"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
  kubernetes_version = "1.8.0"

  # Set kubernetes version
  initial_node_count = 1

  # Create default node pool
  node_pool {
    name = "Standard_D2_v2"

    # Set machine type
    machine_type = "Standard_DS2_v2"

    # Set disk size
    disk_size_gb = 100

    # Set network interface name
    network_interface_name = "Standard_LRS"

    # Set network interface address
    network_interface_address = "10.0.0.8"

    # Set public IP address
    public_ip_address_allocation = "dynamic"

    # Set tags
    tags = {
      environment = "dev"
    }
  }
}

