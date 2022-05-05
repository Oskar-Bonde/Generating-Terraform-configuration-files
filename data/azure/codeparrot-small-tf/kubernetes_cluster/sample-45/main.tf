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

# kubernetes cluster. Use dns prefix exampleaks1, create a default node pool with 1 node count and vm size Standard_D2_v2. Make identity SystemAssigned
# with AzureRM using azurerm.
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "exampleaks1"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name

  kubernetes_version = "1.8.0"

  # Create default node pool
  initial_node_count = 1
  node_count         = 1

  # Set network interfaces for default node pool
  network_interface {
    name            = "nic0"
    subnet_id      = azurerm_subnet.subnet.id
    private_ip_address = "10.0.0.6"
    network_profile_id = azurerm_network_profile.nsg.id
  }

  # Create default node pool
  node_pool {
    name            = "pool0"
    vm_size         = "Standard_DS2_v2"
    os_disk_size_gb = "50"
    os_type         = "linux"
    admin_username   = "root"
    admin_password   = "Password1234!"
    admin_username_password = "Password1234!"

    # Set network interfaces for default node pool
    network_interface {
      name            = "nic1"
      subnet_id      = azurerm_subnet.subnet.id
      private_ip_address = "10.0.1.6"
      network_profile_id = azurerm_network_profile.nsg.id
    }

    # Create default node pool
    node_pool {
      name            = "pool1"
      vm_size         = "Standard_DS2_v2"
      os_disk_size_gb = "50"
      os_type         = "linux"
      admin_username   = "root"
      admin_password   = "Password1234!"
      admin_username_password = "Password1234!"

      # Set network interfaces for default node pool
      network_interface {
        name            = "nic2"
        subnet_id      = azurerm_subnet.subnet.id
        private_ip_address = "10.0.2.6"
        network_profile_id = azurerm_network_profile.nsg.id
      }
    }

    # Create default node pool
    node_pool {
      name            = "pool2"
      vm_size         = "Standard_DS2_v2"
      os_disk_size_gb = "50"
      os_type         = "linux"
      admin_username   = "root"
      admin_password   = "Password1234!"
      admin_username_password = "Password1234!"

      # Set network interfaces for default node pool
      network_interface {
        name            = "nic3"
        subnet_id      = azurerm_subnet.subnet.id
        private_ip_address = "10.0.3.6"
        network_profile_id = azurerm_network_profile.nsg.id
      }
    }

    # Create default node pool
    node_pool {
      name            = "pool3"
      vm_size         = "Standard_DS2_v2"
      os_disk_size_gb = "50"
      os_type         = "linux"
      admin_username   = "root"
      admin_password   = "Password1234!"
      admin_username_password = "Password1234!"

      # Set network interfaces for default node pool
      network_interface {
        name            = "nic4
}

