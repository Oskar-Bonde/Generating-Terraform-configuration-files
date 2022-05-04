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
resource "google_sql_database_instance" "name_0" {
  name = "my-sql-instance-${random_suffix}"
  region = "us-central1"
  database_version = "POSTGRES_9_6"
  settings {
    tier = "db-f1-micro"
    ip_configuration {
      authorized_networks = [
        "10.0.0.0/8",
        "10.0.16.0/8",
        "10.0.32.0/8",
        "10.0.48.0/8",
        "10.0.64.0/8",
        "10.0.8.0/8",
        "10.0.80.0/8",
        "10.0.81.0/8",
        "10.0.82.0/8",
        "10.0.83.0/8",
        "10.0.84.0/8",
        "10.0.85.0/8",
        "10.0.86.0/8",
        "10.0.87.0/8",
        "10.0.88.0/8",
        "10.0.89.0/8",
        "10.0.90.0/8",
        "10.0.91.0/8",
        "10.0.92.0/8",
        "10.0.93.0/8",
        "10.0.94.0/8",
        "10.0.95.0/8",
        "10.0.96.0/8",
        "10.0.97.0/8",
        "10.0.98.0/8",
        "10.0.99.0/8",
      ]
    }
  }
}

# create a sql database
}

