resource "google_storage_bucket" "GCS1" {
  name = "tf-cloud-console-ross-from-terraform"
  storage_class = "STANDARD"
  location = "US-CENTRAL1"
  labels = {
    "env" = "tf_env"
    "dept" = "compliance"
  }
  uniform_bucket_level_access = true
}

resource "google_storage_bucket_object" "picture" {
  name = "apple_logo"
  bucket = google_storage_bucket.GCS1.name
  source = "apple.jpg"
}
