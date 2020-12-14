resource "aws_s3_bucket" "simple_bucket" {
  bucket = "${var.bucket}"
  acl    = "${var.acl}"
  region = "${var.region}"
  policy = "${var.policy}"

  logging {
    target_bucket = "${var.log_bucket}"
    target_prefix = "${var.log_bucket_prefix}"
  }

  versioning {
    enabled = "${var.versioning}"
  }

  tags {
    Name        = "${var.tag_name}"
    Environment = "${var.tag_env}"
  }
}
