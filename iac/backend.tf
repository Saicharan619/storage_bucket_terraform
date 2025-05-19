terraform {
  backend "gcs" {
    bucket  = "my-terraform-bucket-20250516-unique12345"  # Must match the bucket created
    prefix  = "terraform/state/sonar-vm"
  }
}
