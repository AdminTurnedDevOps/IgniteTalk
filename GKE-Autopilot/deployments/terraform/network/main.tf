provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_network" "autopilot" {
  name = "autopilotnetwork"

  auto_create_subnetworks  = false
  enable_ula_internal_ipv6 = true
}

resource "google_compute_subnetwork" "autopilot" {
  name = "autopilotsubnet"

  ip_cidr_range = "10.0.0.0/16"
  region        = var.region

  stack_type       = "IPV4_IPV6"
  ipv6_access_type = "EXTERNAL"

  network = google_compute_network.autopilot.id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = "192.168.0.0/24"
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = "192.168.1.0/24"
  }
}