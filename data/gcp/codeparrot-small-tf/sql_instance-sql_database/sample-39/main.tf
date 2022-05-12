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

# resource block, sql database instance. Set database version to MYSQL_5_7 and enable deletion protection. Also, use setting tier db-f1-micro, which is recommended for production deployments.
resource "google_sql_database" "name_0" {
  name     = "my-db"
  instance = google_compute_instance.vm_instance.name
  charset   = "UTF8"
  collation = "en_US.UTF8"
}

# create a sql database. Use the sql database instance name defined in the previous block
}

