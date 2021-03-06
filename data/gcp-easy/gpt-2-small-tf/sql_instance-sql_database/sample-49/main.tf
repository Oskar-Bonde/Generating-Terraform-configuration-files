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
  name = "my-sql-database-instance-%{random_suffix}"
  instance = google_sql_database_instance.vm_instance.name
}

# create a sql database
}

