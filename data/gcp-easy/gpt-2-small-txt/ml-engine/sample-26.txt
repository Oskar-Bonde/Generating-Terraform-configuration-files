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

# ml engine model resourceresource "google_sql_database_instance" "vm_instance" {
  name = "my-sql-database-instance-%{random_suffix}"
  database = "mysql"
  region = "us-central1"
  tier = "db-f1-micro"

  settings {
    tier = "db-f1-micro"
  }

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

