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
  database_version = "POSTGRES_12"
  instance_class = "db.t2.micro"
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
}

# create a sql database
}

