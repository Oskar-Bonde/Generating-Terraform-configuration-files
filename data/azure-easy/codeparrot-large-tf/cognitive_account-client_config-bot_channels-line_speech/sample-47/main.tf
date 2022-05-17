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

# create cognitive account resourceter
resource "azurerm_cosmosdb_account" "name_2" {
  name                = "myTFCosmosdbAccount"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = "westus2"
  account_tier         = "Standard"
  account_replication_type = "GRS"
}

# data block, azurem client config
data "template_file" "name_3" {
  template = file("${path.module}/user-data.tpl")

  vars = {
    access_key = var.access_key
    secret_key = var.secret_key
    region = var.region
    bucket = var.bucket
    bucket_path = var.bucket_path
    bucket_name = var.bucket_name
    bucket_region = var.bucket_region
    bucket_access_type = var.bucket_access_type
    bucket_secret_key = var.bucket_secret_key
    bucket_region_name = var.bucket_region_name
    bucket_secret_access_type = var.bucket_secret_access_type
    bucket_region_access_type = var.bucket_region_access_type
    bucket_storage_class = var.bucket_storage_class
    bucket_labels = var.bucket_labels
    bucket_versioning = var.bucket_versioning
    bucket_website = var.bucket_website
    bucket_website_domain = var.bucket_website_domain
    bucket_website_hosted_zone_id = var.bucket_website_hosted_zone_id
    bucket_website_zone_id = var.bucket_website_zone_id
    bucket_website_hosted_zone_name = var.bucket_website_hosted_zone_name
    bucket_website_hosted_zone_id_2 = var.bucket_website_hosted_zone_id_2
    bucket_website_hosted_zone_name_2 = var.bucket_website_hosted_zone_name_2
    bucket_website_hosted_zone_id_3 = var.bucket_website_hosted_zone_id_3
    bucket_website_zone_id_3 = var.bucket_website_zone_id_3
    bucket_website_hosted_zone_name_3 = var.bucket_website_hosted_zone_name_3
    bucket_website_hosted_zone_id_4 = var.bucket_website_hosted_zone_id_4
    bucket_website_hosted_zone_name_4 = var.bucket_website_hosted_zone_name_4
    bucket_website_hosted_zone_id_5 = var.bucket_website_hosted_zone_id_5
    bucket_website_hosted_zone_name_5 = var.bucket_website_hosted_zone_name_5
    bucket_website_hosted_zone_id_6 = var.bucket_website_hosted_zone_id_6
    bucket_website_hosted_zone_name_6 = var.bucket_website_hosted_zone_name_6
    bucket_website_hosted_zone_id_7 = var.bucket_website_hosted_zone_id_7
    bucket_website_hosted_zone_name_7 = var.bucket_website_hosted_zone_name_7
    bucket_website_hosted_zone_id_8 = var.bucket_website_hosted_zone_id_8
    bucket_website_hosted_zone_name_8 = var.bucket_website_hosted_zone_name_8
    bucket_website_
}

# create bot channels registration resource
}

# resource block called bot channel direct line speech
}

