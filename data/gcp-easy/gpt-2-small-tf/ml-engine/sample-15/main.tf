terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
}

# ml engine model resource
resource "google_sql_database_instance" "name_0" {
  name = "my-ml-instance-%{random_suffix}"
  instance_class = "db.t2.micro"
  zone = "us-central1-a"
  database_version = "POSTGRES_13"
  instance_class = "db.t2.micro"
  name = "my-ml-instance-%{random_suffix}"
  username = "my-user"
  password = "my-password"
  region = "us-central1"
  deletion_protection = false
  depends_on = [
    google_project_service.services["sql.googleapis.com"],
    google_project_service.services["cloudsql.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudsql.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
    google_project_service.services["cloudresourcemanager.googleapis.com"],
}

