output "param_value" {
  value = "${zipmap( keys(var.params),data.aws_ssm_parameter.this.*.value)}"
}