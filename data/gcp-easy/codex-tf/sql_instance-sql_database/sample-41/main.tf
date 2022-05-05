terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${var.credentials_file}")
  project     = "${var.project}"
  region      = "${var.region}"
}

# resource block, sql database instance
resource "google_sql_database_instance" "name_0" {
  name = "my-instance"
  database_version = "POSTGRES_11"
  region = "us-central1"
  settings {
    tier = "db-f1-micro"
  }
}

# create a sql database
resource "google_sql_database" "name_1" {
  name = "my-database"
  instance = "${google_sql_database_instance.name_0.name}"
}

