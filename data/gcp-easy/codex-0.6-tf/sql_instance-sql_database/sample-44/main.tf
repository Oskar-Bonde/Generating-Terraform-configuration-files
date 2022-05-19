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
  name             = "test-instance"
  region           = var.region
  database_version = "POSTGRES_11"

  settings {
    tier = "db-f1-micro"
  }
}

# create a sql database
resource "google_sql_database" "name_1" {
  name     = "test-db"
  instance = google_sql_database_instance.name_0.name
}

