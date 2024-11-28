terraform {
    backend "gcp"{
        bucket  = "my_bucket_veera"
        prefix  = "terraform/state"
    }
}
