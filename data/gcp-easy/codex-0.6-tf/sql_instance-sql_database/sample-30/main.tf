terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("account.json")
  project     = "my-project"
  region      = "us-central1"
}

# resource block, sql database instance
resource "google_sql_database_instance" "name_0" {
  name = "my-instance"
  region = "us-central1"
  database_version = "POSTGRES_9_6"
  settings {
    tier = "db-f1-micro"
  }
}

# create a sql database
resource "google_sql_database" "name_1" {
  name = "my-database"
  instance = google_sql_database_instance.name_0.name
}

