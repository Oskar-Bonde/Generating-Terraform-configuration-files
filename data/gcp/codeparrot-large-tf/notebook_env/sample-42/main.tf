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
    image = "debian-9-stretch-v20160307"
  }
  machine_image {
    family = "europe-west4-b"
    image = "debian-9-stretch-v20160307"
  }
  machine_image {
    family = "europe-west4-c"
    image = "debian-9-stretch-v20160307"
  }
  machine_image {
    family = "europe-west4-d"
    image = "debian-9-stretch-v20160307"
  }
  machine_image {
    family = "europe-west4-e"
    image = "debian-9-stretch-v20160307"
  }
  machine_image {
    family = "europe-west4-f"
    image = "debian-9-stretch-v20160307"
  }
  machine_image {
    family = "europe-west4-g"
    image = "debian-9-stretch-v20160307"
  }
  machine_image {
    family = "europe-west4-h"
    image = "debian-9-stretch-v20160307"
  }
  machine_image {
    family = "europe-west4-i"
    image = "debian-9-stretch-v20160307"
  }
  machine_image {
    family = "europe-west4-j"
    image = "debian-9-stretch-v20160307"
  }
  machine_image {
    family = "europe-west4-k"
    image = "debian-9-stretch-v20160307"
  }
  machine_image {
    family = "europe-west4-l"
    image = "debian-9-stretch-v20160307"
  }
  machine_image {
    family = "europe-west4-m"
    image = "debian-9-stretch-v20160307"
  }
  machine_image {
    family = "europe-west4-n"
    image = "debian-9-stretch-v20160307"
  }
  machine_image {
    family = "europe-west4-o"
    image = "debian-9-stretch-v20160307"
  }
  machine_image {
    family = "europe-west4-p"
    image = "debian-9-stretch-v20160307"
  }
  machine_image {
    family = "europe-west4-q"
    image = "debian-9-stretch-v20160307"
  }
  machine_image {
    family = "europe-west4-r"
    image = "debian-9-stretch-v20160307"
  }
  machine_image {
    family = "europe-west4-s"
    image = "debian-9-stretch-v20160307"
  }
  machine_image {
    family = "europe-
}

