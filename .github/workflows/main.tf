resource "google_storage_bucket" "my-bucket" {
  name          = "my-bucket-1"
  location      = "US"
  project       = "rich-discovery-441812-s6"
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
