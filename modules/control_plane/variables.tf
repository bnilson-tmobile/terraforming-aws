variable "vpc_id" {
  type = "string"
}

variable "env_name" {
  type = "string"
}

variable "name_prefix" {
  type    = "string"
  default = ""
}

variable "availability_zones" {
  type = "list"
}

variable "vpc_cidr" {
  type = "string"
}

variable "region" {
  type = "string"
}

variable "zone_id" {
  type = "string"
}

variable plane_dns_prefix {
  type    = "string"
  default = "plane"
}

variable "dns_suffix" {
  type = "string"
}

variable "public_subnet_ids" {
  type = "list"
}

variable "private_route_table_ids" {
  type = "list"
}

variable "tags" {
  type = "map"
}

locals {
  name_prefix        = "${var.name_prefix == "" ? var.env_prefix : var.name_prefix}"
  control_plane_cidr = "${cidrsubnet(var.vpc_cidr, 6, 1)}"
}
