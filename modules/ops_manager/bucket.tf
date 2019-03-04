resource "aws_s3_bucket" "ops_manager_bucket" {
  bucket        = "${local.name_prefix}-ops-manager-bucket-${var.bucket_suffix}"
  force_destroy = true

  tags = "${merge(var.tags, map("Name", "Ops Manager S3 Bucket"))}"
}
