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
  database = google_sql_database.ml_database.name
  instance_class = "db.t2.micro"
  region = "us-central1"
  settings {
    tier = "db-f1-micro"
  }
}

