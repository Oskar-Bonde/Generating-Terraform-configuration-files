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
  name             = var.name
  database_version = var.database_version
  region           = var.region
  settings {
    tier = var.tier
  }
}

# create a sql database
resource "google_sql_database" "name_1" {
  name     = var.db_name
  instance = google_sql_database_instance.name_0.name
}

