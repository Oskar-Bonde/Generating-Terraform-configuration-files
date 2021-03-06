terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  region = "us-central1"
  project = "my-project"
}

# create a CaPool resource
resource "google_compute_region_autoscaler" "name_0" {
  name = "my-autoscaler"
  region = "us-central1"
  target = "my-target"
  autoscaling_policy {
    max_replicas = 3
    min_replicas = 1
    cool_down_period_sec = 60
    cpu_utilization {
      target = 0.5
    }
  }
}

