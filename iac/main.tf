provider "google" {
  project = "symbolic-pipe-457709-n9"
  zone    = "europe-west12-b"
}

resource "google_compute_instance" "sonar" {
  name         = "sonar"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "centos-stream-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}
