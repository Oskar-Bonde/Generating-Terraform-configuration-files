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

# resource block, sql database instanceresource "sql_database" {
  name = "my-sql-database"
  instance = google_compute_instance.vm_instance.name
  region = "us-central1"
}

# create a sql database
}

