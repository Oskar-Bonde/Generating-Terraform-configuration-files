terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
  project = var.project_id
  region  = var.region
  version = "1.0.0"
}

# create compute network
}

# create a compute ha vpn gateway
}

