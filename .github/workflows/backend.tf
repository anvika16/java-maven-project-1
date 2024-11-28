terraform {
  backend "gcs" {
    bucket = "my_bucket_veera"
    prefix = "terraform/state"
  }
}
