variable "env_name" {
  type = "string"
}

variable "name_prefix" {
  type    = "string"
  default = ""
}

variable "region" {
  type = "string"
}

variable "availability_zones" {
  type = "list"
}

variable "vpc_cidr" {
  type = "string"
}

variable "vpc_id" {
  type = "string"
}

variable "route_table_ids" {
  type = "list"
}

variable "internetless" {}

variable "public_subnet_ids" {
  type = "list"
}

variable "bucket_suffix" {
  type = "string"
}

variable "zone_id" {
  type = "string"
}

variable "sys_dns_prefix" {
  type    = "string"
  default = "sys"
}

variable "apps_dns_prefix" {
  type    = "string"
  default = "apps"
}

variable "ssh_dns_prefix" {
  type    = "string"
  default = "ssh"
}

variable "tcp_dns_prefix" {
  type    = "string"
  default = "tcp"
}

variable "dns_suffix" {
  type = "string"
}

variable "create_backup_pas_buckets" {
  default = false
}

variable "create_versioned_pas_buckets" {
  default = false
}

variable "ops_manager_iam_user_name" {
  type = "string"
}

variable "iam_ops_manager_role_name" {
  type = "string"
}

variable "create_isoseg_resources" {
  default = 0
}

variable "tags" {
  type = "map"
}

locals {
  name_prefix   = "${var.name_prefix == "" ? var.env_prefix : var.name_prefix}"
  pas_cidr      = "${cidrsubnet(var.vpc_cidr, 6, 1)}"
  services_cidr = "${cidrsubnet(var.vpc_cidr, 6, 2)}"
}
