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

# ml engine model resource
resource "google_sql_database_instance" "name_0" {
  name = "my-ml-instance-%{random_suffix}"
  instance_class = "db.t2.micro"
  region = "us-central1"
  database_version = "POSTGRES_9_6"
  instance_class = "db.t2.micro"
  name = "my-ml-instance-%{random_suffix}"
  database_version = "POSTGRES_9_6"
  instance_class = "db.t2.micro"
  name = "my-ml-instance-%{random_suffix}"
  password = "my-password"
  deletion_protection = "true"
  deletion_protection_policy = "keep"
  deletion_protection_policy_class = "db.t2.micro"
  depends_on = [
    google_sql_database_instance.name_0,
    google_sql_database_instance.name_0
  ]
}

