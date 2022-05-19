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
  name     = "myResourceGroup"
  location = "westus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "myCognitiveAccount"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "myBot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "F0"
  microsoft_app_id    = "myAppId"
  microsoft_app_password = "myAppPassword"
  endpoint            = "https://myBot.azurewebsites.net/api/messages"
  developer_app_insights_key = data.azurerm_client_config.name_2.application_insights_api_key
  cognitive_models {
    qna {
      name = "QnA"
      subscription_key = azurerm_cognitive_account.name_1.primary_access_key
      knowledge_base_id = "myKnowledgeBaseId"
    }
  }
}

