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

# resource block, sql database instance#
resource "google_sql_database" "name_0" {
  name = "my-sql-database-%{random_suffix}"
  instance = google_sql_database_instance.vm_instance.name
  region = "us-central1"
  settings {
    tier = "db-f1-micro"
    tier_name = "db-f1-micro"
  }
  deletion_protection = "true"
}

# create a sql database
}

