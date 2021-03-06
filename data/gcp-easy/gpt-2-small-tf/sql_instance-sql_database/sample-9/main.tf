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
  project = var.project_id
  region = var.region
  database_version = "POSTGRES_12"
  deletion_protection = false
  deletion_protection_policy = "DELETE_ONLY"
  settings {
    tier = "db-f1-micro"
  }
}

# create a sql database
}

