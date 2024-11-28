terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
  required_version = ">= 1.0.0"
}
provider "google" {
  project = "rich-discovery-441812-s6"
  region  = "us-east1"
  zone    = "us-east1-a"
}




resource "google_storage_bucket" "my-bucket" {
  name          = "my_bucket_veera"
  location      = "US"
  project       = "rich-discovery-441812-s6"
  storage_class = "STANDARD"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}
