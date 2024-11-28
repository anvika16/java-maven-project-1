terraform {
    backend "gcp"{
        bucket  = "my-bucket-1"
        prefix  = "terraform/state"
    }
}
