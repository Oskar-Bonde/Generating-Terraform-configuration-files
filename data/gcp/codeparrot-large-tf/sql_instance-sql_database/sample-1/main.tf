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

# resource block, sql database instance. Set database version to MYSQL_5_7 and enable deletion protection. Also, use setting tier db-f1-micro.
resource "google_sql_database_instance" "name_0" {
  name = "my-db-instance"
  database_version = "MYSQL_5_7"
  region = "europe-west1"

  settings {
    tier = "db-f1-micro"
  }

  deletion_protection = false

  settings_attributes {
    tier = "db-f1-micro"
  }

  deletion_protection = false

  deletion_protection_configuration {
    days = 30
  }

  ip_configuration {
    ipv4_enabled = false
    private_network = "10.0.0.0/16"
  }

  # backup_configuration {
  #   enabled = true
  #   location = "us-central1"
  # }

  # maintenance_window {
  #   day          = 30
  #   hour         = 0
  #   update_track = "stable"
  # }

  # ip_allocation_policy {
  #   cluster_ipv4_cidr_block = "10.0.0.0/17"
  # }

  # maintenance_window {
  #   day          = 30
  #   hour         = 0
  #   update_track = "stable"
  # }

  # backup_configuration {
  #   enabled = true
  #   location = "us-central1"
  # }

  # ip_allocation_policy {
  #   cluster_ipv4_cidr_block = "10.0.1.0/17"
  # }

  # maintenance_window {
  #   day          = 30
  #   hour         = 0
  #   update_track = "stable"
  # }

  # ip_allocation_policy {
  #   cluster_ipv4_cidr_block = "10.0.2.0/17"
  # }

  # maintenance_window {
  #   day          = 30
  #   hour         = 0
  #   update_track = "stable"
  # }

  # ip_allocation_policy {
  #   cluster_ipv4_cidr_block = "10.0.3.0/17"
  # }

  # maintenance_window {
  #   day          = 30
  #   hour         = 0
  #   update_track = "stable"
  # }

  # ip_allocation_policy {
  #   cluster_ipv4_cidr_block = "10.0.4.0/17"
  # }

  # maintenance_window {
  #   day          = 30
  #   hour         = 0
  #   update_track = "stable"
  # }

  # ip_allocation_policy {
  #   cluster_ipv4_cidr_block = "10.0.5.0/17"
  # }

  # maintenance_window {
  #   day          = 30
  #   hour         = 0
  #   update_track = "stable"
  # }

  # ip_allocation_policy {
  #   cluster_ipv4_cidr_block = "10.0.6.0/17"
  # }

  # maintenance_window {
  #   day          = 30
  #   hour         = 0
  #   update_track = "stable"
  # }

  # ip_allocation_policy {
  #   cluster_ipv4_cidr_block = "10.0.7.0/17"
  # }

  # maintenance_window {
  #   day          = 30
  #   hour         = 0
  #   update
}

# create a sql database. Use the sql database instance name defined in the previous block
}

