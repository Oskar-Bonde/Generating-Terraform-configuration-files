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
  name = "my-sql-database-instance-%{random_suffix}"
  instance_class = "db.t2.micro"
  database_version = "POSTGRES_9_6"
  region = "us-central1"
  name = "my-sql-database-instance-%{random_suffix}"
  region = "us-central1"
  database_version = "POSTGRES_9_6"
  instance_class = "db.t2.micro"
  depends_on = [
    google_sql_database_instance.name_0
  ]
}

