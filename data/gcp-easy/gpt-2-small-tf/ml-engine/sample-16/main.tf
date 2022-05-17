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
  name = "my-sql-instance-%{random_suffix}"
  instance_class = "db.t2.micro"
  database_version = "POSTGRES_9_6"
  zone = "us-central1-a"
  num_instances = 1
  depends_on = [
    google_sql_database_instance.name_0
  ]
}

