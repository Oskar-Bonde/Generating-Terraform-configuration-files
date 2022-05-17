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
  region = "us-central1"
  database_version = "POSTGRES_12"
  instance_class = "db.t2.micro"
  name = "my-sql-instance-%{random_suffix}"
  database_flags = [
    {
      name = "CREATE TABLE t2_n1_table (table_id STRING(table_id STRING(table_id)) NOT NULL, table_id STRING(table_id STRING(table_id)) NOT NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
    {
      name = "CREATE TABLE t2_n1_table (table_id STRING(table_id STRING(table_id)) NOT NULL, table_id STRING(table_id STRING(table_id)) NOT NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
    {
      name = "CREATE TABLE t2_n1_table (table_id STRING(table_id STRING(table_id)) NOT NULL, table_id STRING(table_id STRING(table_id)) NOT NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
      name = "CREATE TABLE t2_n1_table (table_id STRING(table_id STRING(table_id)) NOT NULL, table_id STRING(table_id STRING(table_id)) NOT NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
}

