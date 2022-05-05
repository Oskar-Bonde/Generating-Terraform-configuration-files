terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${path.module}/credentials.json")
  project     = var.project
  region      = var.region
}

# resource block, sql database instance
resource "google_sql_database_instance" "name_0" {
  name                     = var.name
  database_version         = var.database_version
  region                   = var.region
  settings {
    tier                   = var.tier
    activation_policy      = var.activation_policy
    availability_type      = var.availability_type
    backup_configuration {
      enabled               = var.backup_enabled
      start_time            = var.backup_start_time
    }
    data_disk_size_gb       = var.data_disk_size_gb
    data_disk_type          = var.data_disk_type
    ip_configuration {
      ipv4_enabled          = var.ipv4_enabled
      require_ssl           = var.require_ssl
    }
    location_preference {
      zone                  = var.zone
      follow_gae_application = var.follow_gae_application
    }
    maintenance_window {
      day                   = var.maintenance_window_day
      hour                  = var.maintenance_window_hour
    }
    pricing_plan           = var.pricing_plan
    replication_type       = var.replication_type
    storage_auto_resize    = var.storage_auto_resize
    storage_auto_resize_limit = var.storage_auto_resize_limit
    user_labels {
      label1                = var.user_label1
      label2                = var.user_label2
    }
  }
}

# create a sql database
resource "google_sql_database" "name_1" {
  name     = var.database_name
  instance = google_sql_database_instance.name_0.name
}

