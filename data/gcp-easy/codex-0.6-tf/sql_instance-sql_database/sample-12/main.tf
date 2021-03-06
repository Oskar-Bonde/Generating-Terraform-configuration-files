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
  name     = var.name
  database = var.database
  region   = var.region
  settings {
    tier = var.tier
  }
}

# create a sql database
resource "google_sql_database" "name_1" {
  name     = var.database
  instance = google_sql_database_instance.name_0.name
}

