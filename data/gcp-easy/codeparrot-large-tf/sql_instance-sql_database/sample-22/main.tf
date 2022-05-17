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
  database_version = "POSTGRES_9_6"
  region = "us-central1"
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection =  "true"
}

# create a sql databasevariable
resource "google_sql_database_variable" "name_1" {
  name = "my-sql-database-variable"
  value = "value"
}

