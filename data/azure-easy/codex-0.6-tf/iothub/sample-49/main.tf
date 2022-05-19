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
  name     = "my-resource-group"
  location = "westus"
}

# iothub resource block
resource "azurerm_iothub" "name_1" {
  name                = "my-iothub"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  sku                 = "F1"

  routing {
    endpoint {
      name           = "my-endpoint"
      type           = "serviceBusQueue"
      connection_string = "Endpoint=sb://my-servicebus-namespace.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=my-servicebus-key"
      batch_frequency = "60"
      max_chunk_size  = "10"
      encoding        = "Avro"
      endpoint_resource_group_name = azurerm_resource_group.name_0.name
      endpoint_subscription_id     = "00000000-0000-0000-0000-000000000000"
      endpoint_subscription_name   = "my-subscription"
      endpoint_service_bus_rule_id = "my-servicebus-rule-id"
    }
  }
}

