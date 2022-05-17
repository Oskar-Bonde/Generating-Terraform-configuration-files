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

# create composer environment in region us-central1
resource "google_compute_environment" "name_0" {
  name = "my-compute-environment-%{random_suffix}"
  region = "us-central1"
  project = "my-project"
  zone = "us-central1-a"
  name = "my-env-us-central1"
  network = "default"    
  source_tags = ["my-compute-environment"]
  target_tags = ["my-compute-environment"]
  service_account {
    email = google_service_account.compute_instance.email
  }
}

