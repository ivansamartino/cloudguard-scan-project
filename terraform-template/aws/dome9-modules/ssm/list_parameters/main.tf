resource "aws_ssm_parameter" "parameter" {
  name        = "${var.name}"
  type        = "${var.type}"
  value       = "${var.value}"
  description = "${var.description}"
  key_id      = "${var.key_id}"
}

resource "aws_ssm_parameter" "list_parameter" {
  name        = "${var.name}"
  type        = "${var.type}"
  value       = "${var.value}"
  description = "${var.description}"
  key_id      = "${var.key_id}"
}
