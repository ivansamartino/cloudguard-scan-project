resource "aws_s3_bucket" "website_bucket" {
  bucket = "${var.bucket}"
  acl    = "${var.acl}"
  policy = "${var.policy}"
  region = "${var.region}"

  tags {
    Name        = "${var.tag_name}"
    Environment = "${var.tag_env}"
  }

  website {
    index_document = "${var.website_index_document}"
    error_document = "${var.website_error_document}"
  }

  versioning {
    enabled = "${var.versioning}"
  }

  logging {
    target_bucket = "${var.log_bucket}"
    target_prefix = "${var.log_bucket_prefix}"
  }
}
