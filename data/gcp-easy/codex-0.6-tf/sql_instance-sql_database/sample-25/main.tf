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
  name             = var.instance_name
  region           = var.region
  database_version = var.database_version
  settings {
    tier = var.tier
  }
}

# create a sql database
resource "google_sql_database" "name_1" {
  name     = var.database_name
  instance = google_sql_database_instance.name_0.name
}

