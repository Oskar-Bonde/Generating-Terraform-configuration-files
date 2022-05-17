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
  name = "my-sql-database-instance-${random_suffix}"
  region = "us-central1"

  database_version = "POSTGRES_12"

  settings {
    tier = "db-f1-micro"

    ip_configuration {
      ipv4_enabled = true

      authorized_networks {
        name = "PublicNetworks-${var.vpc_name}"

        value = [
          {
            name = "10.0.0.0/16"
          },
          {
            name = "172.16.0.0/12"
          },
        ]
      }
    }
  }

  deletion_protection =  "true"
}

# create a sql database
resource "google_sql_database" "name_1" {
  name     = "my-sql-database-${random_suffix}"
  instance = google_sql_database_instance.name_0.name
  charset   = "utf8mb4"
}

