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
  database_version = "POSTGRES_12"
  settings {
    tier = "db-f1-micro"
  }
}

# create a sql database
resource "google_sql_database" "name_1" {
  name = "my-sql-database"
  instance = google_sql_database_instance.name_0.name
  charset_name = "utf8mb4"
  collation = "utf8mb4_unicode_ci"
}

