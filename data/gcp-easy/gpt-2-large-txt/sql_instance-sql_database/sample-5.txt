terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

# resource block, sql database instance
}

# create a sql database
}

