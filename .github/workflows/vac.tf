resource "google_compute_network" "my-vpc" {

    name    =  "custom-vpc"

    auto_create_subnetworks   = "false"

}

