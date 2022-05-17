terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# create a node template
resource "google_compute_node_template" "name_0" {
  name = "my-node-template"
  region = "us-central1"
  node_type = "n1-standard-1"

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete  = true
    boot         = true
  }

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name = "my-node-group"
  zone = "us-central1-a"

  node_template {
    can_ip_forward = true
    disk {
      source_image = "debian-cloud/debian-9"
      auto_delete  = true
      boot         = true
    }
  }

  node_template {
    can_ip_forward = true
    disk {
      source_image = "debian-cloud/debian-9"
      auto_delete  = true
      boot         = true
    }
  }

  node_template {
    can_ip_forward = true
    disk {
      source_image = "debian-cloud/debian-9"
      auto_delete  = true
      boot         = true
    }
  }

  node_template {
    can_ip_forward = true
    disk {
      source_image = "debian-cloud/debian-9"
      auto_delete  = true
      boot         = true
    }
  }

  node_template {
    can_ip_forward = true
    disk {
      source_image = "debian-cloud/debian-9"
      auto_delete  = true
      boot         = true
    }
  }

  node_template {
    can_ip_forward = true
    disk {
      source_image = "debian-cloud/debian-9"
      auto_delete  = true
      boot         = true
    }
  }

  node_template {
    can_ip_forward = true
    disk {
      source_image = "debian-cloud/debian-9"
      auto_delete  = true
      boot         = true
    }
  }

  node_template {
    can_ip_forward = true
    disk {
      source_image = "debian-cloud/debian-9"
      auto_delete  = true
      boot         = true
    }
  }

  node_template {
    can_ip_forward = true
    disk {
      source_image = "debian-cloud/debian-9"
      auto_delete  = true
      boot         = true
    }
  }

  node_template {
    can_ip_forward = true
    disk {
      source_image = "debian-cloud/debian-9"
      auto_delete  = true
      boot         = true
    }
  }

  node_template {
    can_ip_forward = true
    disk {
      source_image = "debian-cloud/debian-9"
      auto_delete  = true
      boot         = true
    }
  }

  node_template {
    can_ip_forward = true
    disk {
      source_image = "debian-cloud/debian-9"
      auto_delete  = true
      boot         = true
    }
  }

  node_template {
    can_ip_forward = true
    disk {
      source_image = "debian-cloud/debian-9"
      auto_delete  = true
      boot         = true
    }
  }

  node_template {
    can_ip_forward = true
    disk {
      source_image = "debian-cloud/debian-9"
      auto_delete  = true
      boot         = true
    }
  }

  node_template
}

