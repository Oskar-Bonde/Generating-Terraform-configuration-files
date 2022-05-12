terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2
resource "google_composer_environment" "name_0" {
  name     = "composer-environment-${random_suffix}"
  region   = "us-central1"
  project  = var.project_id
  composer = google_composer_environment.name_0.id

  # Set machine type, and enable all oauth scopes, including service accounts.
  # It is recommended to set machine type, disable all oauth scopes, and enable APIs offered by Google APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also recommended to set machine type, disable all oauth scopes, and enable APIs offered by Cloud APIs.
  # It is also
}

