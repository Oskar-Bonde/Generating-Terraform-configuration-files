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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 a-z-a-z-c-c-d-e-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-i-g-g-i-g-i-g-g-i-g-i-g-g-i-g-g-i-g-g-i-g-g-i-g-g-i-g-g-g-i-g-g-g-g-i-g-g-g-g-g-g-g-g-g-g-g-g-g-g-g-g-g-g-g-g-g-g-g-g-g-g-g-g-g-g-g-g
}

