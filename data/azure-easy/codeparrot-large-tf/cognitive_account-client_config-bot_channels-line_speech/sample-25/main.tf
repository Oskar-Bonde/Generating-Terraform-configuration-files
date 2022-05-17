terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# create cognitive account resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFCOG"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_subscription" "name_3" {}

# create storage account
resource "azurerm_storage_account" "name_4" {
  name                     = "bosh"
  resource_group_name      = azurerm_resource_group.name_1.name
  location                 = "westus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create bot channels registration resource
resource "azurerm_bot_application_registration" "name_5" {
  name                = "bosh"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = "westus"
  sku                 = "Standard"
  webhook_url          = "https://hooks.azure.com/subscriptions/${azurerm_subscription.current.name}/resourceGroups/${azurerm_resource_group.name_1.name}/providers/Microsoft.Web/sites/${azurerm_resource_group.name_1.name}/Webhooks/${azurerm_bot_application_registration.name_5.name}"

  registration_status_notification_channels {
    topic_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkWebhook"
    topic_name  = "AWSElasticBeanstalkWebhook"
  }

  webhook_configuration {
    allowed_ips = [
      "0.0.0.0/0",
    ]
    allowed_ssl_protocols = [
      "TLSv1",
      "TLSv1.1",
    ]
  }

  # notification_channels {
  #   topic_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkWebhook"
  #   topic_name  = "AWSElasticBeanstalkWebhook"
  # }

  # notification_channels {
  #   topic_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkWebhook"
  #   topic_name  = "AWSElasticBeanstalkWebhook"
  # }

  # notification_channels {
  #   topic_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkWebhook"
  #   topic_name  = "AWSElasticBeanstalkWebhook"
  # }

  # notification_channels {
  #   topic_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkWebhook"
  #   topic_name  = "AWSElasticBeanstalkWebhook"
  # }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_application_hangouts" "name_6" {
  name                = "bot_hangouts"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = "westus"
  sku                 = "Standard"
  webhook_url          = "https://hooks.azure.com/subscriptions/${azurerm_subscription.current.name}/resourceGroups/${azurerm_resource_group.name_1.name}/providers/Microsoft.Web/sites/${azurerm_resource_group.name_1.name}/Webhooks/${azurerm_bot_application_hangouts.name_6.name}"

  hang
}

