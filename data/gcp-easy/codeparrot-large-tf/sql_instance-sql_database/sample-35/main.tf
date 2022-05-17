terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# resource block, sql database instance
resource "google_sql_database_instance" "name_0" {
  name = "my-sql-database-instance"
  region = "us-central1"
  database_version = "POSTGRES_13"
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection =  "true"
}

# create a sql database
resource "google_sql_database" "name_1" {
  name     = "my-sql-database-instance"
  instance = google_sql_database_instance.name_0.name
  charset   = "utf8mb4"
}
