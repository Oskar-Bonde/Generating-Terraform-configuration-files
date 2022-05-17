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
  project = "my-project"
  database_version = "POSTGRES_12"
  settings {
    tier = "db-f1-micro"
    tier_name = "my-sql-database-%{random_suffix}"
  }
  deletion_protection = false
  deletion_protection_policy = "DELETE_ONLY"
  deletion_protection_policy_class = "DELETE_ONLY"
  deletion_protection_policy_is_enabled = true
  deletion_protection_policy_is_locked = true
  depends_on = [
    google_project_service.services["compute.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["storage-component.googleapis.com"],
    google_project_service.services["monitoring.googleapis.com"],
    google_project_service.services["compute.googleapis.com"],
    google_project_service.services["storage-component.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["logging.googleapis.com"],
    google_project_service.services["monitoring.googleapis.com"],
    google_project_service.services["serviceusage.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["storage-component.googleapis.com"],
    google_project_service.services["monitoring.googleapis.com"],
    google_project_service.services["logging.googleapis.com"],
    google_project_service.services["storage-component.googleapis.com"],
    google_project_service.services["monitoring.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["storage-component.googleapis.com"],
    google_project_service.services["monitoring.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["storage-component.googleapis.com"],
    google_project_service.services["logging.googleapis.com"],
    google_project_service.services["monitoring.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["storage-component.googleapis.com"],
    google_project_service.services["monitoring.googleapis.com
}

# create a sql database
}

