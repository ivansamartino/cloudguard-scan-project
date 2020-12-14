resource "aws_cloudwatch_log_destination" "destination" {
  count      = "${length(var.names)}"
  name       = "${var.names[count.index]}"
  role_arn   = "${var.role_arn}"
  target_arn = "${var.target_arn}"
}
