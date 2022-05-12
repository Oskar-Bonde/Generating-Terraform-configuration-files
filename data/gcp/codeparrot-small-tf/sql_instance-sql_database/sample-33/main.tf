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

# resource block, sql database instance. Set database version to MYSQL_5_7 and enable deletion protection. Also, use setting tier db-f1-micro, which is recommended for MySQL 5.7.0. You can also specify tier db-f1-micro if you have a smaller version of mysql-f1-micro"
resource "google_sql_database" "name_0" {
  name = "my-db"
  region = "europe-north1"

  settings {
    tier = "db-f1-micro"
    disk_size_gb = "10"
    disk_type = "pd-standard"
    ip_configuration {
      authorized_networks = [
        "10.0.0.0/8",
        "172.16.0.0/12",
        "192.168.0.0/16",
        "192.168.64.0/20",
        "192.168.128.0/20",
        "192.168.160.0/20",
        "192.168.224.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168.240.0/20",
        "192.168
}

# create a sql database. Use the sql database instance name defined in the previous block
}

