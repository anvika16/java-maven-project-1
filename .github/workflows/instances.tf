resource "google_compute_instance" "my-vm" {
  name         = "terraform-vm"  # VM name
  machine_type = "e2-medium"     # Machine type (adjust based on your needs)
  zone         = "us-east1-a"  # Specify the zone within the region

  boot_disk {
    initialize_params {
      image = "debian-11-bullseye-v20230404"  # Use the image you need (this is a Debian image)
    }
  }

  network_interface {
    network = "custom-vpc"
    access_config {
      // Include this block to enable external IP
    }
  }

  tags = ["http-server", "https-server"]  # Tags to allow HTTP/HTTPS traffic
}
