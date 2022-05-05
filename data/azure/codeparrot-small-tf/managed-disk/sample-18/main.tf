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

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# managed disk resource. Storage account type is standard LRS, create option empty and disk size is 1 gb. Use resource group name and location West Europe
resource "azurerm_managed_disk" "name_1" {
  name                 = "datadisk"
  location             = "westus2"
  resource_group_name  = azurerm_resource_group.name_0.name
  disk_size_gb         = "1"
  create_option        = "Empty"
  lun                 = 0
  disk_encryption_key_id = var.disk_encryption_key_id
  disk_encryption_key_secret = var.disk_encryption_key_secret
  lun_size             = 1
  create_option        = "Empty"
  disk_encryption_key_id = var.disk_encryption_key_id
  lun_encryption_key_secret = var.disk_encryption_key_secret
  create_option        = "Empty"
  disk_encryption_key_id = var.disk_encryption_key_id
  lun_size             = 1
  create_option        = "Empty"
  disk_encryption_key_id = var.disk_encryption_key_id
  lun_encryption_key_secret = var.disk_encryption_key_secret
  create_option        = "Empty"
  disk_encryption_key_id = var.disk_encryption_key_id
  lun_size             = 1
  create_option        = "Empty"
  disk_encryption_key_id = var.disk_encryption_key_id
  lun_encryption_key_secret = var.disk_encryption_key_secret
  create_option        = "Empty"
  disk_encryption_key_id = var.disk_encryption_key_id
  lun_size             = 1
  create_option        = "Empty"
  disk_encryption_key_id = var.disk_encryption_key_id
  lun_encryption_key_secret = var.disk_encryption_key_secret
  lun_count             = 1
  create_option        = "Empty"
  disk_encryption_key_id = var.disk_encryption_key_id
  lun_count             = 1
  create_option        = "Empty"
  disk_encryption_key_id = var.disk_encryption_key_id
  lun_count             = 1
  create_option        = "Empty"
  disk_encryption_key_id = var.disk_encryption_key_id
  lun_count             = 1
  create_option        = "Empty"
  disk_encryption_key_id = var.disk_encryption_key_id
  lun_count             = 1
  create_option        = "Empty"
  disk_encryption_key_id = var.disk_encryption_key_id
  lun_count             = 1
  create_option        = "Empty"
  disk_encryption_key_id = var.disk_encryption_key_id
  lun_count             = 1
  create_option        = "Empty"
  disk_encryption_key_id = var.disk_encryption_key_id
  lun_count             = 1
  create_option        = "Empty"
  disk_encryption_key_id = var.disk_encryption_key_id
  lun_count             = 1
  create_option        = "Empty"
  disk_encryption_key_id = var.disk_encryption_key_id
  lun_count             = 1
  create_option        = "Empty"
  disk_encryption_key_id = var.disk_encryption_key_id
  lun_count             = 1
 
}

