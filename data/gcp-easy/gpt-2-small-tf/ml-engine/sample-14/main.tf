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

# ml engine model resource
resource "google_sql_database_instance" "name_0" {
  name = "my-sql-instance-%{random_suffix}"
  instance_class = "db.t2.micro"
  region = "us-central1"
  database_version = "POSTGRES_12"
  settings {
    tier = "db-t2.micro"
    database_flags = "ONLY_ONLY"
  }
}

