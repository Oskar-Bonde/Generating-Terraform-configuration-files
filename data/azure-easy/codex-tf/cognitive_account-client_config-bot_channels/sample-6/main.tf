terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure
provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "my-rg"
  location = "westus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "my-cog-account"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "CognitiveServices"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create aks cluster
resource "azurerm_kubernetes_cluster" "name_3" {
  name                = "my-aks-cluster"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  dns_prefix          = "my-aks-cluster"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  service_principal {
    client_id     = data.azurerm_client_config.name_2.service_principal_object_id
    client_secret = data.azurerm_client_config.name_2.service_principal_password
  }

  role_based_access_control {
    enabled = true
  }
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "my-bot-channels-registration"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "bot"
  microsoft_app_id    = "00000000-0000-0000-0000-000000000000"
  endpoint            = "https://my-bot-channels-registration.azurewebsites.net/api/messages"
  developer_app_insights_key = "00000000-0000-0000-0000-000000000000"
  developer_app_insights_api_key = "00000000-0000-0000-0000-000000000000"
  developer_app_insights_application_id = "00000000-0000-0000-0000-000000000000"
  cognitive_models {
    cognitive_model_id = azurerm_cognitive_account.name_1.id
    cognitive_model_endpoint = azurerm_cognitive_account.name_1.endpoint
    cognitive_model_key = azurerm_cognitive_account.name_1.primary_access_key
  }
}

