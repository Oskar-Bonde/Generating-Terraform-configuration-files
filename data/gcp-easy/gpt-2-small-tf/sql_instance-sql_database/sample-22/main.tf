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
resource "google_sql_database" "name_0" {
  name = "my-sql-database-%{random_suffix}"
  instance = google_sql_database_instance.vm_instance.name
  region = "us-central1"
  database_version = "MYSQL_5_7"
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  deletion_protection_policy {
    type = "Delete"
  }
}

# create a sql database
}

