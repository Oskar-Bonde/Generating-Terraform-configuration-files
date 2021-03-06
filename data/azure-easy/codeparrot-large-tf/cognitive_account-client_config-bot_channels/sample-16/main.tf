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
  name     = "myTFCOGNItiveAccount"
  location = "westus2"
}

# data block, azurem client config
data "template_file" "name_3" {
  template = file("${path.module}/user_data.tpl")

  vars = {
    # terraform variables
    azurerm_subscription_id = var.azurerm_subscription_id
    azurerm_client_id = var.azurerm_client_id
    azurerm_client_secret = var.azurerm_client_secret
    azurerm_tenant_id = var.azurerm_tenant_id
    azurerm_location = var.azurerm_location
    azurerm_resource_group = var.azurerm_resource_group
    azurerm_resource_group_name = var.azurerm_resource_group_name
    azurerm_storage_account_name = var.azurerm_storage_account_name
    azurerm_storage_container_name = var.azurerm_storage_container_name
    azurerm_default_resource_group_name = var.azurerm_default_resource_group_name
    azurerm_default_storage_account_name = var.azurerm_default_storage_account_name
    azurerm_default_container_name = var.azurerm_default_container_name
    azurerm_default_resource_group_name = var.azurerm_default_resource_group_name
    azurerm_default_storage_account_key = var.azurerm_default_storage_account_key
    azurerm_default_container_access_key = var.azurerm_default_container_access_key
    azurerm_default_resource_group_access_key = var.azurerm_default_resource_group_access_key
    azurerm_default_storage_container_access_key = var.azurerm_default_storage_container_access_key
    azurerm_default_resource_group_default_key = var.azurerm_default_resource_group_default_key
    azurerm_default_storage_account_default_key = var.azurerm_default_storage_account_default_key
    azurerm_default_container_default_key = var.azurerm_default_container_default_key
    azurerm_default_resource_group_default_key = var.azurerm_default_resource_group_default_key
    azurerm_default_storage_container_default_key = var.azurerm_default_storage_container_default_key
    azurerm_default_resource_group_default_key = var.azurerm_default_resource_group_default_key
    azurerm_default_storage_account_default_default_key = var.azurerm_default_storage_account_default_default_key
    azurerm_default_container_default_default_key = var.azurerm_default_container_default_default_key
    azurerm_default_resource_group_default_default_key = var.azurerm_default_resource_group_default_default_key
    azurerm_default_storage_account_default_default_key = var.azurerm_default_storage_account_default_default_key
    azurerm_default_container_default_default_key = var.azurerm_default_container_default_default_key
    azurerm_default_resource_group_default_default_key = var
}

# create bot channels registration resource
}

