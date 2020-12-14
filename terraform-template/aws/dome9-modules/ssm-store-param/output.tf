output "param_full_name" {
  value = "${aws_ssm_parameter.this.*.name}"
}
