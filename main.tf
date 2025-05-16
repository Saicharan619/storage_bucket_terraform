# Configure the Terraform Google provider (hashicorp/google) with version constraint
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"  # use the latest major version
    }
  }
}

terraform {
  backend "gcs" {
    bucket  = "my-terraform-bucket-20250516-unique123"
    prefix  = "terraform/state/sonar-vm"
  }
}

# Set default provider settings for GCP (project and region)
provider "google" {
  project = var.project_id  # GCP project ID for all resources
  region  = var.region      # Default region (e.g., "us-central1") for GCP resources:contentReference[oaicite:0]{index=0}
}

# Create a Google Cloud Storage bucket
resource "google_storage_bucket" "bucket" {
  name          = var.bucket_name      # Globally unique bucket name (3-63 chars, lowercase, start/end with letter or number):contentReference[oaicite:1]{index=1}
  location      = var.location         # Bucket location (multi-region or specific region, e.g., "US", "EU", "us-central1")
  storage_class = var.storage_class    # Storage class (STANDARD, NEARLINE, COLDLINE, etc.)

  # Recommended: enable uniform bucket-level access for simplified, uniform IAM policy management:contentReference[oaicite:2]{index=2}
  uniform_bucket_level_access = true

  # Prevent public ACLs on this bucket (optional, enforces no public access)
  public_access_prevention = "enforced"

  # Optional: allow bucket and its objects to be deleted with `terraform destroy`
  force_destroy = var.force_destroy

  # Enable object versioning (recommended for data protection and recovery):contentReference[oaicite:3]{index=3}
  versioning {
    enabled = var.enable_versioning
  }

  # Example lifecycle rule: delete objects older than var.lifecycle_days days:contentReference[oaicite:4]{index=4}
  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = var.lifecycle_days
    }
  }

  # Labels for metadata/organization
  labels = {
    environment = var.environment
  }
}

resource "google_compute_instance" "sonar" {
  name         = "sonar"
  machine_type = "e2-medium"            # This should match the actual config
  zone         = "europe-west12-b"

  boot_disk {
    initialize_params {
      image = "centos-stream-9"  # Use actual image if known
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}

