terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe"
}

# resource block, sql database instance. Set database version to MYSQL_5_7 and use setting tier db-f1-micro. Also, enable deletion protection
resource "google_sql_database" "name_0" {
  name     = "my-db-instance"
  instance = google_compute_instance.vm_instance.name
  charset   = "UTF8"
  project  = var.project_id
  deletion_protection = false
}

# create a sql database. Use the sql database instance name defined in the previous block
resource "google_sql_database" "name_1" {
  instance = google_sql_database.name_0.name
  name     = "my-db-f1-micro"
  charset   = "UTF8"
  project  = var.project_id
  deletion_protection = false
}

