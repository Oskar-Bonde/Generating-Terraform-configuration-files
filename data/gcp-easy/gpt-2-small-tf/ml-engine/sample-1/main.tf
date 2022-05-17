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
  region = "us-central1"
  zone = "us-central1-a"
  collation = "cn-f1-c4-4-8"
  collation_key = "my-sql-instance-%{random_suffix}"
  collation_value = "my-sql-instance-%{random_suffix}"
  depends_on = [
    google_sql_database_instance.name_0,
    google_sql_database_instance.name_0,
    google_sql_database_instance.name_0,
    google_sql_database_instance.name_0,
    google_sql_database_instance.name_0,
    google_sql_database_instance.name_0,
    google_sql_database_instance.name_0,
  ]
}

