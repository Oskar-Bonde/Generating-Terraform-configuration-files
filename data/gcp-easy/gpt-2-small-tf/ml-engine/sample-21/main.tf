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
  zone = "us-central1-a"
  database_version = "POSTGRES_12"
  instance_class = "db.t2.micro"
  name = "my-sql-instance-%{random_suffix}"
  username = "my-sql-user"
  password = "my-sql-password"
  db_version = "POSTGRES_12"
  region = "us-central1"
  maintenance_window = "sun:04:00-sun:05:00"
  maintenance_schedule = "daily"
  deletion_protection = false
  tags = {
    Name = "my-sql-instance-%{random_suffix}"
  }
}

