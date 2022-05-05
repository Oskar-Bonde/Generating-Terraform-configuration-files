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
  name              = "my-database-instance"
  database_version  = "POSTGRES_9_6"
  region            = "${var.region}"
  settings {
    tier = "db-n1-standard-1"
  }
}

# create a sql database
resource "google_sql_database" "name_1" {
  name     = "my-database"
  instance = "${google_sql_database_instance.name_0.name}"
}

