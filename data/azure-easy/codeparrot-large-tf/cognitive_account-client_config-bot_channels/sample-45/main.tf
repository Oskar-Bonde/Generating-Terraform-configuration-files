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
  name     = "myTFRG"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_client_config" "name_3" {}

# create storage account
resource "azurerm_storage_account" "name_4" {
  name                     = "bosh"
  resource_group_name      = azurerm_resource_group.name_1.name
  location                 = data.azurerm_resource_group.name_1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create bot channels registration resource
resource "azurerm_bot_application_registration" "name_5" {
  name                = "bosh"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = data.azurerm_resource_group.name_1.location
  sku                 = "Standard"
  depends_on          = [azurerm_resource_group.name_1]

  sku_name = "standard"
  location = data.azurerm_resource_group.name_1.location

  # parameters
  app_service_plan_name = "Terraform"
  app_service_plan_location = data.azurerm_resource_group.name_1.location
  app_service_plan_properties = {
    "AppServicePlan" = "Terraform"
  }

  app_service_plan_properties_value = {
    "AppServicePlan.AppServicePlan.AppServicePlanProperties.AppServicePlanValue" = "true"
  }

  app_service_plan_tags = {
    "AppServicePlan.AppServicePlan.AppServicePlanTags.AppServicePlanTag1" = "value1"
  }

  app_service_plan_tags_value = {
    "AppServicePlan.AppServicePlan.AppServicePlanTags.AppServicePlanTag1.Value" = "value1"
  }

  app_service_plan_schedule_type = "Scheduled"

  app_service_plan_time_zone = "America/New_York"

  # parameters
  app_service_plan_is_linux_os_version_value = "true"
  app_service_plan_package_uri = "https://github.com/Azure/azure-quickstart-templates/blob/master/101-vm-simple-linux-install.json"
  app_service_plan_package_uri_value = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-vm-simple-linux-install.json"
  app_service_plan_storage_account_name = azurerm_storage_account.name_4.name
  app_service_plan_default_container_name = "bosh"
  app_service_plan_default_resource_group_name = azurerm_resource_group.name_1.name
  app_service_plan_is_linux_profile_supported = true
  app_service_plan_package_uri_value_key = "value"
  app_service_plan_package_uri_value_value = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-vm-simple-linux-install.json"
  app_service_plan_storage_account_primary_blob_endpoint = "https://raw.githubusercontent.com/
}

