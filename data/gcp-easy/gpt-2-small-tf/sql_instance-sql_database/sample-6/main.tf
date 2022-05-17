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
  database_version = "POSTGRES_9_6"
  instance_class = "db.t2.micro"
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
}

# create a sql database
}

