provider "google" {
  project = "symbolic-pipe-457709-n9"
  region  = "europe-west12"
  zone    = "europe-west12-b"
}

resource "google_compute_instance" "sonar" {
  name         = "sonar"
  machine_type = "n1-standard-1"
  zone         = "europe-west12-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
