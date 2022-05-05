terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure
provider "azurerm" {
  version = "=2.0.0"
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "my-rg"
  location = "westus"
}

# data block, azurem client config
data "azurerm_client_config" "name_1" {}

# data block, azurem subscription
data "azurerm_subscription" "name_2" {}

# data block, azurem tenant
data "azurerm_tenant" "name_3" {}

# create aks cluster
resource "azurerm_kubernetes_cluster" "name_4" {
  name                = "my-aks"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  dns_prefix          = "my-aks"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  service_principal {
    client_id     = data.azurerm_client_config.name_1.service_principal_client_id
    client_secret = data.azurerm_client_config.name_1.service_principal_client_secret
  }

  role_based_access_control {
    enabled = true
  }
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_5" {
  name                = "my-bot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "bot"
  microsoft_app_id    = "00000000-0000-0000-0000-000000000000"
  microsoft_app_password = "my-bot-password"
}

