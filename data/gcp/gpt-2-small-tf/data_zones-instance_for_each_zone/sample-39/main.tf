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

# data block with available google compute zones in europe west4. The status must be UP and project is terraform-338909.
resource "google_compute_zones" "name_0" {
  name        = "my-zone1"
  region      = "europe-west4"
  project     = "my-project"
  zone_id     = "my-zone1"
}

# compute instance. Create an instance for each available compute zone. One zone for each value. Type f1 micro, debian 9 image, default network interface and giva a name
}

