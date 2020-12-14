output "domain_name" {
  value = "${aws_s3_bucket.bucket.bucket_domain_name}"
}

output "domain_id" {
  value = "${aws_s3_bucket.bucket.id}"
}

output "domain_arn" {
  value = "${aws_s3_bucket.bucket.arn}"
}
