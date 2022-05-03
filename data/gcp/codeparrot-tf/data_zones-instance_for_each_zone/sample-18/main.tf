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

# data block with available google compute zones in europe west4. The status must be UP and project is terraform-338909
data "google_compute_zones" "name_0" {
  region = "europe-west4"
}

# compute instance. Create an instance for each available compute zone. One zone for each value. Type f1 micro, debian 9 image, default network interface and giva a name for the instance.
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-%%{random_suffix}"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
    access_config {
    }
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/${var.key_name}.pub")}"
  }

  tags = ["ssh"]

  # install nginx and serve a simple web page
  metadata_startup_script = "sudo apt-get update; sudo apt-get install -y nginx"

  service_account {
    scopes = ["https://www.googleapis.com/auth/compute.readonly"]
  }

  # install simple web page
  metadata_startup_script = "sudo apt-get update; sudo apt-get install -y simple"

  labels = {
    "instance_name" = "my-instance"
  }

  # create a network interface for each available instance
  network_interface {
    network = "default"
    access_config {
    }
  }

  # create a subnet for each available instance
  subnet = {
    subnet_name = "my-subnet"
    subnet_ip = "10.0.1.0/24"
  }

  # create a security group for each available instance
  security_groups = [
    "foo",
    "bar",
  ]

  # create a route table for each available instance
  route_table = {
    instance_name = google_compute_instance.name_1.name
  }

  # create a subnet for each available instance
  subnet = {
    subnet_name = "my-subnet"
    subnet_ip = "10.0.2.0/24"
  }

  # create a security group for each available instance
  security_groups = [
    "foo",
    "bar",
  ]

  # create a route table for each available instance
  route_table = {
    instance_name = google_compute_instance.name_1.name
  }

  # create a subnet for each available instance
  subnet = {
    subnet_name = "my-subnet"
    subnet_ip = "10.0.3.0/24"
  }

  # create a security group for each available instance
  security_groups = [
    "foo",
    "bar",
  ]

  # create a route table for each available instance
  route_table = {
    instance_name = google_compute_instance.name_1.name
  }

  # create a subnet for each available instance
  subnet = {
    subnet_name = "my-subnet"
    subnet_ip = "10.0.4.0/24"
  }

  # create a security group for each available instance
  security_groups = [
    "foo",
    "bar",
  ]

  # create a route table for each available instance
  route_table = {
    instance_name = google_compute_instance.name_1.name
  }

  # create a subnet for each available instance
  subnet =
}

