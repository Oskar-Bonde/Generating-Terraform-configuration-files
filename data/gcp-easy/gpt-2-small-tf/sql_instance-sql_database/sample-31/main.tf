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
  region = "us-central1"
  project = "my-project"
  database_version = "5.5.0"
  settings {
    tier = "db-f1-micro"
    tier_name = "db-f1-micro"
  }
  deletion_protection = "true"
}

# create a sql database
}

