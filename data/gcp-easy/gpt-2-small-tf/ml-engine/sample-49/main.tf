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

# ml engine model resource#
resource "google_sql_database_instance" "name_0" {
  name = "my-sql-instance-%{random_suffix}"
  instance_class = "db.t2.micro"
  instance_zone = "us-central1-a"
  name = "my-sql-instance-%{random_suffix}"
  database_version = "POSTGRES_12"
  instance_class = "db.t2.micro"
  zone = "us-central1-a"
  database_version = "POSTGRES_12"
  depends_on = [
    google_sql_database_instance.name_0,
    google_sql_database_instance.name_0,
  ]
}

