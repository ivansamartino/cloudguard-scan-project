resource "aws_cloudwatch_log_subscription_filter" "subscription" {
  name            = "${var.name}"
  log_group_name  = "${var.log_group_name}"
  filter_pattern  = "${var.filter_pattern}"
  destination_arn = "${var.destination_arn}"
}
