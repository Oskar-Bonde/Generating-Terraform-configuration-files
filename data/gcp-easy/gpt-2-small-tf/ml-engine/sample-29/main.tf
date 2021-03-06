terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
}

# ml engine model resource
resource "google_sql_database_instance" "name_0" {
  name = "my-ml-instance-%{random_suffix}"
  instance_class = "db.t2.micro"
  zone = "us-central1-a"
  database_version = "POSTGRES_12"
  instance_class = "db.t2.micro"
  name = "my-ml-instance-%{random_suffix}"
  region = "us-central1"
  database_version = "POSTGRES_12"
  instance_class = "db.t2.micro"
  name = "my-ml-instance-%{random_suffix}"
  password = "my-password"
  deletion_protection = false
  deletion_protection_policy = "keep"
  settings {
    tier = "db-server-2.8.4-db-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-server-2.8.4-end
                     
}

