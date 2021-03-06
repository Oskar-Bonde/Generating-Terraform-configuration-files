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

  settings {
    tier = "db-f1-micro"
    ip_configuration {
      authorized_networks = [
        {
          name = "default"
          value = "10.100.0.0/16"
        }
      ]
    }
  }
}

# create a sql database
}

