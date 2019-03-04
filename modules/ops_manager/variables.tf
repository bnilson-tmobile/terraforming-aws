variable "region" {
  type = "string"
}

variable "optional_count" {}

variable "vm_count" {}

variable "private" {}

variable "env_name" {}

variable "name_prefix" {
  default = ""
}

variable "ami" {}

variable "optional_ami" {}

variable "instance_type" {}

variable "subnet_id" {}

variable "vpc_id" {}

variable "vpc_cidr" {}

variable "additional_iam_roles_arn" {
  type    = "list"
  default = []
}

variable "opsman_attached_dns_prefix" {
  type    = "string"
  default = "pcf"
}

variable "opsman_unattached_dns_prefix" {
  type    = "string"
  default = "pcf"
}

variable "opsman_optional_dns_prefix" {
  type    = "string"
  default = "pcf-optional"
}

variable "dns_suffix" {}

variable "zone_id" {}

variable "bucket_suffix" {}

variable "tags" {
  type = "map"
}

locals {
  name_prefix = "${var.name_prefix == "" ? var.env_name : var.name_prefix}"
}