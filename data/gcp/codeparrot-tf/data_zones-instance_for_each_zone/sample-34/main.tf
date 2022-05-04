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
}

# compute instance. Create an instance for each available compute zone. One zone for each value. Type f1 micro, debian 9 image, default network interface and giva a namevariable.
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

  can_ip_forward = true

  metadata_startup_script = "sudo apt-get update"

  tags = ["ssh"]

  metadata_startup_script_ps1 = "sudo apt-get install -y ppa:ubuntu/xenial/ppa"

  tags = ["ssh"]

  metadata_startup_script_ps2 = "sudo apt-get install -y ppa:ubuntu/xenial/ppa"

  tags = ["ssh"]

  metadata_startup_script_user = "ubuntu"

  tags = ["ssh"]

  metadata_startup_script_bootscript = "sudo apt-get install -y bootscripts"

  tags = ["ssh"]

  metadata_startup_script_user = "ubuntu"

  tags = ["ssh"]

  metadata_startup_script_bootscript_ps1 = "sudo apt-get install -y bootscripts -p ${var.key_name}.pub -r ${var.region} -n ${var.instance_name}"

  tags = ["ssh"]

  metadata_startup_script_bootscript_ps2 = "sudo apt-get install -y bootscripts -p ${var.key_name}.pub -r ${var.region} -n ${var.instance_name}"

  tags = ["ssh"]

  metadata_startup_script_user = "ubuntu"

  tags = ["ssh"]

  metadata_startup_script_bootscript_ps1 = "sudo apt-get install -y bootscripts -p ${var.key_name}.pub -r ${var.region} -n ${var.instance_name}"

  tags = ["ssh"]

  metadata_startup_script_bootscript_ps2 = "sudo apt-get install -y bootscripts -p ${var.key_name}.pub -r ${var.region} -n ${var.instance_name}"

  tags = ["ssh"]

  metadata_startup_script_user = "ubuntu"

  tags = ["ssh"]

  metadata_startup_script_bootscript_ps1 = "sudo apt-get install -y bootscripts -p ${var.key_name}.pub -r ${var.region} -n ${var.instance_name}"

  tags = ["ssh"]

  metadata_startup_script_bootscript_ps2 = "sudo apt-get install -y bootscripts -p ${var.key_name}.pub -r ${var.region} -n ${var.instance_name}"

  tags = ["ssh"]

  metadata_startup_script_user = "ubuntu"

  tags = ["ssh"]

  metadata_startup_script_bootscript_
}
