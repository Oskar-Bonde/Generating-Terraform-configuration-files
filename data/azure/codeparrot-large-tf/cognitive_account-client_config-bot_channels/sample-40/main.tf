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

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "example-resources"
  location = "westus"
}

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group
resource "azurerm_cosmosdb_account" "name_1" {
  name                = "scott"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"
  account_type        = "Standard_LRS"
}

# data block, azurem client config file
data "template_file" "name_2" {
  template = file("${path.module}/templates/tf_config.json")

  vars = {
    account_name = azurerm_cosmosdb_account.name_1.name
    account_key    = azurerm_cosmosdb_account.name_1.primary_access_key
    account_type   = "Standard_LRS"
    access_key    = azurerm_cosmosdb_account.name_1.primary_access_key
    secret_key    = azurerm_cosmosdb_account.name_1.primary_secret_key
    server_url     = "https://api.watsonplatform.net/organizations/swatson-platform/api"
    client_id     = "WatsonPlatform"
  }
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name to get registration id
resource "azurerm_bot_application_registration" "name_3" {
  name                = "botRegistration"
  location            = "westus"
  resource_group_name = azurerm_resource_group.rg.name
  app_id             = azurerm_bot_application_registration.name_3.app_id
  registration_id   = "f0-${var.region}-${var.env}"
}

