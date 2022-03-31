terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = "${file("${path.module}/credentials.json")}"
  project     = "${var.project}"
}

# resource block, sql database instance. Set database version to MYSQL_5_7 and use setting tier db-f1-micro. Also, enable deletion protection
resource "google_sql_database_instance" "name_0" {
  name         = "my-database"
  database_version = "MYSQL_5_7"
  tier         = "db-f1-micro"
  deletion_protection = true
}

# create a sql database. Use the sql database instance name defined in the previous block
resource "google_sql_database" "name_1" {
  instance = google_sql_database_instance.name_0.name
  name     = "my-database"
}

