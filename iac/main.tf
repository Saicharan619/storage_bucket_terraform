resource "google_compute_instance" "instance-20250505-105229" {
  name         = "instance-20250505-105229"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "centos-stream-9-v20250415"
      size  = 20
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  zone = "europe-north2-b"
}
