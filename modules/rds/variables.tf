variable "rds_db_username" {
  default = "admin"
}

variable "rds_instance_class" {
  default = "db.m4.large"
}

variable "engine" {
  type = "string"
}

variable "engine_version" {
  type = "string"
}

variable "db_port" {}

variable "rds_instance_count" {
  type    = "string"
  default = 0
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

variable "vpc_id" {
  type = "string"
}

variable "tags" {
  type = "map"
}

locals {
  name_prefix = "${var.name_prefix == "" ? var.env_prefix : var.name_prefix}"

  rds_cidr = "${cidrsubnet(var.vpc_cidr, 6, 3)}"
}
