output "arn" {
  value = "${aws_kms_alias.alias.arn}"
}

output "target_key_arn" {
  value = "${aws_kms_alias.alias.target_key_arn}"
}
