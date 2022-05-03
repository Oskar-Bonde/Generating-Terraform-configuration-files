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

# data block with google compute zones in europe west4. The status must be UP and set project to terraform-338909
data "google_compute_zones" "name_0" {
}

# compute instance.Use the first available compute zone. Type f1 micro, debian 9 image, default network interface and give name
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-2-%%{random_suffix}"
  machine_type = "f1-micro"
  zone = "europe-west4-a"
  network_interface {
    network = "default"
    access_config {
      # Ephemeral IP
    }
  }
  metadata = {
    startup-script = <<EOT
#!/bin/bash
echo EOT

# install Terraform.
apt-get update -y
apt-get install -y tinyproxy
echo "---start installing Terraform---" | tee -a $LOGFILE 2>&1
apt-get install -y tinyproxy
echo "---finish installing Terraform---" | tee -a $LOGFILE 2>&1

# install Terraform.
# terraform init --verbose install
# terraform create-user --verbose install
# terraform destroy-user --verbose install
# terraform list-users --verbose install
# terraform login-users --verbose install
# terraform logout-users --verbose install
# terraform user-create --verbose install
# terraform user-delete --verbose install
# terraform user-get-home --verbose install
# terraform user-list-users --verbose install
# terraform user-update-password --verbose install
# terraform user-update-email --verbose install
# terraform user-update-ssh-key --verbose install
# terraform user-update-ssh-key-public --verbose install
# terraform user-update-ssh-key-private --verbose install
# terraform user-update-volume-attachment --verbose install
# terraform user-update-volume-backup --verbose install
# terraform user-update-volume-snapshot --verbose install
# terraform user-update-volume-backup-retention --verbose install
# terraform user-update-volume-backup-window --verbose install
# terraform user-update-volume-backup-window-update --verbose install
# terraform user-update-volume-backup-window-update-config --verbose install
# terraform user-update-volume-backup-window-update-config-update --verbose install
# terraform user-update-volume-backup-window-update-config-update-config --verbose install
# terraform user-update-volume-backup-window-update-logging --verbose install
# terraform user-update-volume-backup-window-update-logging-update --verbose install
# terraform user-update-volume-backup-window-update-logging-update-config-update-config --verbose install
# terraform user-update-volume-backup-window-update-logging-update-config-update-config-update-config-update-config-update-config-update-config-update-config-update-config-update-config-update-config-update-config-update-config-update-config-update-config-update-
}

