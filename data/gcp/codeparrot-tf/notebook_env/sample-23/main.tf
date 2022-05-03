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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 apex to find the correct image
resource "google_notebooks_instance" "name_0" {
  name = "notebooks-instance-${local.name_suffix}"
  location = "europe-west4-a"
  machine_type = "n1-standard-1"
  tags = ["notebooks"]

  # create a persistent disk from a public URL
  disk {
    source = "https://storage.googleapis.com/golang/notes/debian-9-stretch-v20200426"
    auto_delete = true
  }

  # create a persistent disk from a private URL
  disk {
    # this is the file which will be uploaded to gcr.io
    source = "https://storage.googleapis.com/golang/notes/debian-9-stretch-v20200426"
    auto_delete = true
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}

