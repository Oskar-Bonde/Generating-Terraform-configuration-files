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

# create a notebook instance in us west 1. Use machine type e2 medium and vm image from deeplearning-platform-release and image familiy tf-latest-cpu
resource "google_compute_instance" "name_0" {
  name         = "notebook-instance"
  machine_type = "e2-medium"
  zone         = "us-west1-b"

  boot_disk {
    initialize_params {
      image = "projects/deeplearning-platform-release/global/images/tf-latest-cpu"
    }
  }

  network_interface {
    network = "default"
  }

  metadata = {
    startup-script = <<EOF
#! /bin/bash
set -e

# Install Jupyter Notebook
apt-get update
apt-get install -yq --no-install-recommends \
    build-essential \
    git \
    jq \
    libcurl3-dev \
    libfreetype6-dev \
    libhdf5-serial-dev \
    libpng-dev \
    libzmq3-dev \
    pkg-config \
    python-dev \
    rsync \
    software-properties-common \
    unzip \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

pip install --upgrade pip setuptools
pip install jupyter

# Install TensorFlow CPU version.
pip install --upgrade tensorflow

# Enable Jupyter Notebook
jupyter notebook --generate-config
sed -i.bak -e "s/#c.NotebookApp.ip = 'localhost'/c.NotebookApp.ip = '*'/g" /root/.jupyter/jupyter_notebook_config.py
sed -i.bak -e "s/#c.NotebookApp.open_browser = True/c.NotebookApp.open_browser = False/g" /root/.jupyter/jupyter_notebook_config.py
sed -i.bak -e "s/#c.NotebookApp.token = ''/c.NotebookApp.token = '${JUPYTER_TOKEN}'/g" /root/.jupyter/jup
}

