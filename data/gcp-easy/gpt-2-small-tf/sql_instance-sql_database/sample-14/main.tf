terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
}

# resource block, sql database instance
resource "google_sql_database" "name_0" {
  name = "my-sql-database"
  region = "us-central1"
  project = "my-project"
  database_version = "5.6.0"
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
}

# create a sql database
}

