terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("account.json")
  project     = "my-project"
  region      = "us-central1"
}

# create a CaPool resource
resource "google_compute_region_backend_service" "name_0" {
  name        = "my-backend-service"
  region      = "us-central1"
  health_checks = ["${google_compute_health_check.default.self_link}"]
  backend {
    group = "${google_compute_instance_group_manager.default.instance_group}"
  }
}

