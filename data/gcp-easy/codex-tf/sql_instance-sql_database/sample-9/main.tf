terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  project = var.project
  region  = var.region
}

# resource block, sql database instance
resource "google_sql_database_instance" "name_0" {
  name = "my-sql-instance"
  database_version = "MYSQL_5_7"
  region = var.region
  settings {
    tier = "db-n1-standard-1"
  }
}

# create a sql database
resource "google_sql_database" "name_1" {
  name = "my-sql-database"
  instance = google_sql_database_instance.name_0.name
}

