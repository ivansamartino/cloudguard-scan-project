resource "aws_cloudwatch_event_rule" "event_rule" {
  name                = "${var.name}"
  description         = "${var.description}"
  schedule_expression = "${var.schedule_expression}"
}