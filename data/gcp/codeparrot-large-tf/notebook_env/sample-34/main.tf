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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 apex to find the latest official release.
resource "google_notebooks_instance" "name_0" {
  name = "notebooks-instance"
  location = "europe-west4-a"
  machine_type = "e2-medium"
  machine_image {
    source = "debian-cloud/debian-9"
  }
  network_interface {
    network = "default"
  }
  # create a persistent disk from a public URL
  disk {
    source = "https://storage.googleapis.com/golang/notes/debian-9-minimal.tar.gz"
    type = "pd-standard"
  }
  # create a persistent disk from a private URL
  disk {
    source = "https://storage.googleapis.com/golang/notes/debian-9-minimal.tar.gz"
    type = "pd-standard"
  }
  # create a persistent disk from a private URL
  disk {
    source = "https://storage.googleapis.com/golang/notes/debian-9-minimal.tar.gz"
    type = "pd-standard"
  }
  # create a persistent disk from a private URL
  disk {
    source = "https://storage.googleapis.com/golang/notes/debian-9-minimal.tar.gz"
    type = "pd-standard"
  }
  # copy the persistent disk to the machine
  disk {
    source = "https://storage.googleapis.com/golang/notes/debian-9-minimal.tar.gz"
    machine_type = "e2-medium"
    type = "pd-standard"
    boot = true
  }
  # copy the persistent disk to the machine
  disk {
    source = "https://storage.googleapis.com/golang/notes/debian-9-minimal.tar.gz"
    machine_type = "e2-medium"
    type = "pd-standard"
    boot = true
  }
  # copy the persistent disk to the machine
  disk {
    source = "https://storage.googleapis.com/golang/notes/debian-9-minimal.tar.gz"
    machine_type = "e2-medium"
    type = "pd-standard"
    boot = true
  }
  # copy the persistent disk to the machine
  disk {
    source = "https://storage.googleapis.com/golang/notes/debian-9-minimal.tar.gz"
    machine_type = "e2-medium"
    type = "pd-standard"
    boot = true
  }
  # copy the persistent disk to the machine
  disk {
    source = "https://storage.googleapis.com/golang/notes/debian-9-minimal.tar.gz"
    machine_type = "e2-medium"
    type = "pd-standard"
    boot = true
  }
  # copy the persistent disk to the machine
  disk {
    source = "https://storage.googleapis.com/golang/notes/debian-9-minimal.tar.gz"
    machine_type = "e2-medium"
    type = "pd-standard"
    boot = true
  }
  # copy the persistent disk to the machine
  disk {
    source = "https://storage.googleapis.com/golang/notes/debian-9-minimal.tar.gz"
    machine_type = "e2-medium"
    type = "pd-standard
}

