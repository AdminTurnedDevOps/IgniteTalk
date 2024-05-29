provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_container_cluster" "default" {
  name = var.cluster_name

  location                 = var.region
  enable_autopilot         = true
  enable_l4_ilb_subsetting = true

  network    = var.vpc_name
  subnetwork = var.subnet_name

  ip_allocation_policy {
    stack_type                    = "IPV4_IPV6"
  }

  deletion_protection = false
}
