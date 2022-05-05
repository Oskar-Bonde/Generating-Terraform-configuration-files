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
  name                    = "my-autoscaler"
  region                  = "us-central1"
  target                  = "https://www.googleapis.com/compute/v1/projects/my-project/zones/us-central1-a/instances/my-instance"
  autoscaling_policy_body = <<EOF
{
  "coolDownPeriodSec": 60,
  "cpuUtilization": {
    "utilizationTarget": 0.6
  },
  "maxNumReplicas": 10,
  "minNumReplicas": 1
}

