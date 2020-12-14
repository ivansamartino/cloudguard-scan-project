output "arn" {
  value = "${aws_ssm_parameter.parameter.arn}"
}

output "value" {
  value = "${aws_ssm_parameter.parameter.value}"
}
