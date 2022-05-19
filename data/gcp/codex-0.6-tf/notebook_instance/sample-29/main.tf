terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create a notebook instance in location us west 1 a. Use machine type e2 medium and vm image from deeplearning-platform-release and image familiy tf-latest-cpu
resource "google_compute_instance" "name_0" {
  name         = "notebook-instance"
  machine_type = "e2-medium"
  zone         = "us-west1-a"

  boot_disk {
    initialize_params {
      image = "projects/deeplearning-platform-release/global/images/tf-latest-cpu"
    }
  }

  network_interface {
    network = "default"
  }

  metadata = {
    startup-script = "sudo apt-get update && sudo apt-get install -y python3-pip && sudo pip3 install jupyter && sudo jupyter notebook --generate-config && sudo echo c.NotebookApp.password = u\'sha1:d8d8c8f3b9a1:f9f9b9c8d8f3b9a1b9c8d8f3b9a1b9c8d8f3b9a1\' >> /root/.jupyter/jupyter_notebook_config.py && sudo jupyter notebook --allow-root --ip=0.0.0.0 --port=8888"
  }
}

