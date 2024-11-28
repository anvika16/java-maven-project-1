resource "google_compute_instance" "default" {
  name         = "my-instance"
  machine_type = "e2-medium"
  zone         = "us-east1-a"

  network_interface {
    network = "projects/rich-discovery-441812-s6/global/networks/my-custom-network"
    access_config {
      // Enable external IP
    }
  }
}
