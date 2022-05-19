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

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "my-cognitive-account"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "my-bot-channels-registration"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "F0"
  microsoft_app_id    = "my-app-id"
  microsoft_app_password = "my-app-password"
  endpoint            = "https://my-bot-channels-registration.azurewebsites.net/api/messages"
  developer_app_insights_key = "my-developer-app-insights-key"
  developer_app_insights_api_key = "my-developer-app-insights-api-key"
  developer_app_insights_application_id = "my-developer-app-insights-application-id"
  cognitive_models {
    qna {
      name = "my-qna-model"
      subscription_key = azurerm_cognitive_account.name_1.primary_access_key
      knowledge_base_id = "my-knowledge-base-id"
    }
  }
  luis_application {
    name = "my-luis-application"
    authoring_key = azurerm_cognitive_account.name_1.primary_access_key
    version = "0.1"
    culture = "en-us"
    subscription_key = azurerm_cognitive_account.name_1.primary_access_key
    application_id = "my-application-id"
  }
  dispatch {
    name = "my-dispatch"
    subscription_key = azurerm_cognitive_account.name_1.primary_access_key
    cognitive_models {
      name = "my-cognitive-model"
      subscription_key = azurerm_cognitive_account.name_1.primary_access_key
      application_id = "my-application-id"
    }
  }
  tags = {
    environment = "dev"
  }
}

