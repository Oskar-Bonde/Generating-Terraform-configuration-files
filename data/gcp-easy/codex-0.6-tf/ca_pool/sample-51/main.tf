terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${var.credentials_file}")
  project     = "${var.project}"
  region      = "${var.region}"
}

# create a CaPool resource
resource "google_compute_region_autoscaler" "name_0" {
  name                    = "autoscaler-1"
  region                  = "us-central1"
  target                  = "https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/instances/my-instance"
  autoscaling_policy {
    max_replicas = 5
    min_replicas = 1
    cpu_utilization {
      target = 0.5
    }
  }
}

