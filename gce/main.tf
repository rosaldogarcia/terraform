resource "google_compute_instance" "vm-from-tf" {
  name = "vm-from-tf"
  zone = "asia-southeast1-a"
  machine_type = "e2-micro"
  #machine_type = "e2-small"

  allow_stopping_for_update = true

  network_interface {
    network = "custom-vpc-tf"
    subnetwork = "sub-sg"
  }

  boot_disk {
    initialize_params {
      image = "debian-11-bullseye-v20220719"
      size = 10
    }
  }
  labels = {
    "env" = "tf_learning"
  }
  
  service_account {
    email = "terraform-gcp@terraform-cgp-358612.iam.gserviceaccount.com"
    scopes = [ "cloud-platform" ]
  }
  lifecycle {
    ignore_changes = [
      attached_disk
    ]
  }
}

resource "google_compute_disk" "disk-1" {
  name = "disk1"
  size = 2
  zone = "asia-southeast1-a"
  type = "pd-ssd"
}

resource "google_compute_attached_disk" "adisk" {
  disk = google_compute_disk.disk-1.id
  instance = google_compute_instance.vm-from-tf.id
}