provider "google" {
  project = var.project
  region =  var.region
  zone = var.zone
}

resource "google_project_services" "project" {
  project = var.project
  service = "cloudbuild.googleapis.com"

  timeouts {
    create = "20m"
    update = "5m"
  }

  disable_dependent_services = true
}
