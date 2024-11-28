resource "google_compute_subnetwork" "test-subnet" {
  name          = "esta1-subnet"
  ip_cidr_range = "10.1.0.0/24"
  region        = "us-east1"
  network       = "custom-vpc"  # Specify the VPC network
}

resource "google_compute_subnetwork" "demo-subnet" {
  name          = "east4-subnet-1"
  ip_cidr_range = "10.2.0.0/24"
  region        = "us-east4"
  network       = "custom-vpc"  # Specify the VPC network
}
