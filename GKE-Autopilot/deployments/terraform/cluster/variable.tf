variable "project_id" {
  type = string
  default = "gold-mode-297211"
}

variable "region" {
  type = string
  default = "us-east1"
}

variable "vpc_name" {
  type = string
  default = "autopilotnetwork"
}

variable "subnet_name" {
  type = string
  default = "autopilotsubnet"
}

variable "cluster_name" {
  type = string
  default = "autopilotgke"
}