terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# create cognitive account resource
resource "azurerm_cosmosdb_account" "name_2" {
  name                = "myCognitiveCognitive"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = "westus2"
  account_type        = "Standard_LRS"
}

# data block, azurem client config
data "template_file" "name_3" {
  template = file("${path.module}/templates/user_data.tpl")

  vars = {
    access_key = var.access_key
    secret_key = var.secret_key
    region = var.region
    bucket = var.bucket
    bucket_name = var.bucket_name
    bucket_path = var.bucket_path
    bucket_type = "Standard_LRS"
    key_name = var.key_name
    key_path = var.key_path
    key_type = "Standard_LRS"
    region_name = var.region_name
    secret_name = var.secret_name
    secret_path = var.secret_path
    region_endpoint = var.region_endpoint
    secret_endpoint = var.secret_endpoint
    bucket_region = var.bucket_region
    bucket_name_prefix = var.bucket_name_prefix
    bucket_name_suffix = var.bucket_name_suffix
    bucket_access_type = var.bucket_access_type
    bucket_secret_type = var.bucket_secret_type
    bucket_region_name = var.bucket_region_name
    bucket_secret_name = var.bucket_secret_name
    bucket_region_endpoint = var.bucket_region_endpoint
    bucket_secret_endpoint = var.bucket_secret_endpoint
    bucket_region_name = var.bucket_region_name
    bucket_secret_region = var.bucket_secret_region
    bucket_name_prefix = var.bucket_name_prefix
    bucket_name_suffix = var.bucket_name_suffix
    bucket_access_type = var.bucket_access_type
    bucket_secret_access_type = var.bucket_secret_access_type
    bucket_region_endpoint = var.bucket_region_endpoint
    bucket_secret_endpoint = var.bucket_secret_endpoint
    bucket_region_name = var.bucket_region_name
    bucket_secret_region = var.bucket_secret_region
    bucket_name_prefix = var.bucket_name_prefix
    bucket_name_suffix = var.bucket_name_suffix
    bucket_access_type = var.bucket_access_type
    bucket_secret_access_type = var.bucket_secret_access_type
    bucket_region_endpoint = var.bucket_region_endpoint
    bucket_secret_endpoint = var.bucket_secret_endpoint
    bucket_region_name = var.bucket_region_name
    bucket_secret_region = var.bucket_secret_region
    bucket_name_prefix = var.bucket_name_prefix
    bucket_name_suffix = var.bucket_name_suffix
    bucket_access_type = var.bucket_access_type
    bucket_secret_access_type = var.bucket_secret_access_type
    bucket_region_endpoint = var.bucket_region_endpoint
    bucket_secret_endpoint = var.bucket_secret_endpoint
    bucket_region_name = var.bucket_region_name
    bucket_secret_region = var.bucket_secret_region
    bucket
}

# create bot channels registration resource

}

