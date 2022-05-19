terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  project = "my-project"
  region  = "us-central1"
}

# create a CaPool resource
resource "google_compute_region_autoscaler" "name_0" {
  name                    = "my-autoscaler"
  region                  = "us-central1"
  target                  = google_compute_instance_group_manager.my-instance-group-manager.self_link
  autoscaling_policy {
    max_replicas = 10
    min_replicas = 1
    cool_down_period_sec = 60
    cpu_utilization {
      target = 0.8
    }
  }
}

