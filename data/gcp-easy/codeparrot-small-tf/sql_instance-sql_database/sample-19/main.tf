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
  database_version = "POSTGRES_12"
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    ip_configuration {
      ipv4_enabled = true
      private_network = "projects/${var.project_id}/global/networks/default"
      authorized_networks = [
        {
          name = "my-public-ip"
          value = "10.10.10.0/24"
        },
        {
          name = "my-private-ip"
          value = "10.10.20.0/24"
        },
        {
          name = "my-private-ip2"
          value = "10.10.30.0/24"
        }
      ]
    }
  }
}

# create a sql database
}

