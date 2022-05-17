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

# ml engine model resourceresource "google_sql_database" "ml_database" {
  name = "my-sql-database"
  instance = google_sql_database_instance.vm_instance.name
  region = "us-central1"
  database_version = "POSTGRES_9_6"
  settings {
    tier = "db-f1-micro"
    tier_name = "my-sql-database"
  }
}

