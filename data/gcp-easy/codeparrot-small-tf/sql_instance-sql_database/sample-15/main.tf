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
  name = "my-sql-instance"
  region = "us-central1"
  database_version = "POSTGRES_9_6"
  settings {
    tier = "db-f1-micro"
    ip_configuration {
      authorized_networks = ["10.0.0.0/8"]
      authorized_networks_secondary_ranges = ["10.0.16.0/20"]
      authorized_networks_secondary_ip_range = "10.0.32.0/20"
      authorized_networks_secondary_networks = "10.0.48.0/20"
      authorized_networks_secondary_ranges = "10.0.64.0/20"
      authorized_networks_secondary_ip_range = "10.0.80.0/20"
      authorized_networks_secondary_networks = "10.0.96.0/20"
      authorized_networks_secondary_ranges = "10.0.97.0/20"
      authorized_networks_secondary_ip_range = "10.0.98.0/20"
      name = "my-sql-instance"
    }
  }
}

# create a sql database
}

