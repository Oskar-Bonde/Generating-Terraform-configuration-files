terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/credentials.json")
  project     = "my-project"
  region      = "us-central1"
}

# create composer environment in region us-central1
module "composer" {
  source = "./modules/composer"
  name   = "my-composer"
}

