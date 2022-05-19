terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = var.project
  region      = var.region
}

# resource block, sql database instance
resource "google_sql_database_instance" "name_0" {
  name                 = "my-database-instance"
  database_version     = "POSTGRES_11"
  region               = var.region
  settings {
    tier                = "db-f1-micro"
    availability_type   = "ZONAL"
    storage_auto_resize = true
    storage_size        = 10
    backup_configuration {
      enabled = true
      start_time = "04:00"
    }
  }
}

# create a sql database
resource "google_sql_database" "name_1" {
  name     = "my-database"
  instance = google_sql_database_instance.name_0.name
}

