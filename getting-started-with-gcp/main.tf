terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.31.0"
    }
  }
}

provider "google" {
    project = "terraform-cgp-358612"
    region = "us-central1"
    zone = "us-central1-a"
}

resource "google_storage_bucket" "GCS1" {
  name = "bucket-from-tf-up-using-sa-4444"
  location = "US"
  }