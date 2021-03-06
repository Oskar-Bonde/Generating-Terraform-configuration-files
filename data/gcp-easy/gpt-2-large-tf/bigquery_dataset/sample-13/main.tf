terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-from-tcp"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# bigquery dataset resource
resource "google_compute_instance_group_manager" "name_1" {
  name = "my-compute-instance-group-manager"
  zone = "us-central1-a"

  # HTTP access from anywhere
  # HTTP_name = "my-compute-instance-group-manager"
  machine_type = "f1-micro"

  # HTTP_options {
  # = "my-compute-instance-group-manager"
  #_port = "80"
  #_protocol = "http"

  #_disk {
    # = "my-compute-instance-group-manager"
  }

  # HTTP_options {
  # = "my-compute-instance-group-manager"
  #_port = "443"
  #_protocol = "http"

  #_disk {
    # = "my-compute-instance-group-manager"
  }

  # HTTP_options {
  # = "my-compute-instance-group-manager"
  #_port = "443"
  #_protocol = "http"

  #_disk {
    # = "my-compute-instance-group-manager"
  }

  # HTTP_options {
  # = "my-compute-instance-group-manager"
  #_port = "443"
  #_protocol = "http"

  #_disk {
    # = "my-compute-instance-group-manager"
  }

  # HTTP_options {
  # = "my-compute-instance-group-manager"
  #_port = "443"
  #_protocol = "http"

  #_disk {
    # = "my-compute-instance-group-manager"
  }

  # HTTP_options {
  # = "my-compute-instance-group-manager"
  #_port = "443"
  #_protocol = "http"

  #_disk {
    # = "my-compute-instance-group-manager"
  }

  # HTTP_options {
  # = "my-compute-instance-group-manager"
  #_port = "443"
  #_protocol = "http"

  #_disk {
    # = "my-compute-instance-group-manager"
  }

  # HTTP_options {
  # = "my-compute-instance-group-manager"
  #_port = "443"
  #_protocol = "http"

  #_disk {
    # = "my-compute-instance-group-manager"
  }

  # HTTP_options {
  # = "my-compute-instance-group-manager"
  #_port = "443"
  #_protocol = "http"

  #_disk {
    # = "my-compute-instance-group-manager"
  }

  # HTTP_options {
  # = "my-compute-instance-group-manager"
  #_port = "443"
  #_protocol = "http"

  #_disk {
    # = "my-compute-instance-group-manager"
  }

  # HTTP_options {
  # = "my-compute-instance-group-manager"
  #_port = "443"
  #_protocol = "http"

  #_disk {
    #
}

