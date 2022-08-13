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
    credentials = "keys.json"
}
