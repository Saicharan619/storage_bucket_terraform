#this is file is used to destroy the imported vm using harness we have to give tgis details to destroy
provider "google" {
  project = "saicharan-457910"
  zone    = "europe-north2-b"
}

resource "google_compute_instance" "instance-20250505-105229" {
  name         = "instance-20250505-105229"
  machine_type = "e2-medium"
  zone         = "europe-north2-b"

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-stream-9"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
