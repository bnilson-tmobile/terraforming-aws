resource "aws_s3_bucket" "buildpacks_bucket" {
  bucket        = "${local.name_prefix}-buildpacks-bucket-${var.bucket_suffix}"
  force_destroy = true

  versioning {
    enabled = "${var.create_versioned_pas_buckets}"
  }

  tags = "${merge(var.tags, map("Name", "Elastic Runtime S3 Buildpacks Bucket"))}"
}

resource "aws_s3_bucket" "droplets_bucket" {
  bucket        = "${local.name_prefix}-droplets-bucket-${var.bucket_suffix}"
  force_destroy = true

  versioning {
    enabled = "${var.create_versioned_pas_buckets}"
  }

  tags = "${merge(var.tags, map("Name", "Elastic Runtime S3 Droplets Bucket"))}"
}

resource "aws_s3_bucket" "packages_bucket" {
  bucket        = "${local.name_prefix}-packages-bucket-${var.bucket_suffix}"
  force_destroy = true

  versioning {
    enabled = "${var.create_versioned_pas_buckets}"
  }

  tags = "${merge(var.tags, map("Name", "Elastic Runtime S3 Packages Bucket"))}"
}

resource "aws_s3_bucket" "resources_bucket" {
  bucket        = "${local.name_prefix}-resources-bucket-${var.bucket_suffix}"
  force_destroy = true

  versioning {
    enabled = "${var.create_versioned_pas_buckets}"
  }

  tags = "${merge(var.tags, map("Name", "Elastic Runtime S3 Resources Bucket"))}"
}

# BBR Buckets

resource "aws_s3_bucket" "buildpacks_backup_bucket" {
  bucket        = "${local.name_prefix}-buildpacks-backup-bucket-${var.bucket_suffix}"
  force_destroy = true

  count = "${var.create_backup_pas_buckets ? 1 : 0}"

  tags = "${merge(var.tags, map("Name", "Elastic Runtime S3 Buildpacks Backup Bucket"))}"
}

resource "aws_s3_bucket" "droplets_backup_bucket" {
  bucket        = "${local.name_prefix}-droplets-backup-bucket-${var.bucket_suffix}"
  force_destroy = true

  count = "${var.create_backup_pas_buckets ? 1 : 0}"

  tags = "${merge(var.tags, map("Name", "Elastic Runtime S3 Droplets Backup Bucket"))}"
}

resource "aws_s3_bucket" "packages_backup_bucket" {
  bucket        = "${local.name_prefix}-packages-backup-bucket-${var.bucket_suffix}"
  force_destroy = true

  count = "${var.create_backup_pas_buckets ? 1 : 0}"

  tags = "${merge(var.tags, map("Name", "Elastic Runtime S3 Packages Backup Bucket"))}"
}

resource "aws_s3_bucket" "resources_backup_bucket" {
  bucket        = "${local.name_prefix}-resources-backup-bucket-${var.bucket_suffix}"
  force_destroy = true

  count = "${var.create_backup_pas_buckets ? 1 : 0}"

  tags = "${merge(var.tags, map("Name", "Elastic Runtime S3 Resources Backup Bucket"))}"
}
