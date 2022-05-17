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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 asia-east1
resource "google_notebooks_instance" "name_0" {
  name = "notebooks-instance"
  machine_type = "europe-west4-a"
  location = "europe-west4-a"
  machine_image {
    source = "gcr.io/deeplearning-platform-release/base-cpu"
  }
  machine_image {
    family = "europe-west4-a"
    image = "gcr.io/projects/deeplearning-platform-release/images/family/europe-west4/a"
  }
  machine_image {
    family = "europe-west4-b"
    image = "gcr.io/projects/deeplearning-platform-release/images/family/europe-west4/b"
  }
  machine_image {
    family = "europe-west4-c"
    image = "gcr.io/projects/deeplearning-platform-release/images/family/europe-west4/c"
  }
  machine_image {
    family = "europe-west4-d"
    image = "gcr.io/projects/deeplearning-platform-release/images/family/europe-west4/d"
  }
  machine_image {
    family = "europe-west4-e"
    image = "gcr.io/projects/deeplearning-platform-release/images/family/europe-west4/e"
  }
  machine_image {
    family = "europe-west4-f"
    image = "gcr.io/projects/deeplearning-platform-release/images/family/europe-west4/f"
  }
  machine_image {
    family = "europe-west4-g"
    image = "gcr.io/projects/deeplearning-platform-release/images/family/europe-west4/g"
  }
  machine_image {
    family = "europe-west4-h"
    image = "gcr.io/projects/deeplearning-platform-release/images/family/europe-west4/h"
  }
  machine_image {
    family = "europe-west4-i"
    image = "gcr.io/projects/deeplearning-platform-release/images/family/europe-west4/i"
  }
  machine_image {
    family = "europe-west4-j"
    image = "gcr.io/projects/deeplearning-platform-release/images/family/europe-west4/j"
  }
  machine_image {
    family = "europe-west4-k"
    image = "gcr.io/projects/deeplearning-platform-release/images/family/europe-west4/k"
  }
  machine_image {
    family = "europe-west4-l"
    image = "gcr.io/projects/deeplearning-platform-release/images/family/europe-west4/l"
  }
  machine_image {
    family = "europe-west4-m"
    image = "gcr.io/projects/deeplearning-platform-release/images/family/europe-west4/m"
  }
  machine_image {
    family = "europe-west4-n"
    image = "
}

