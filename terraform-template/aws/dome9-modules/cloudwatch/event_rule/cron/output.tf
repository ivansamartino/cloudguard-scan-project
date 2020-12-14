 output "arn" {
  value = "${aws_cloudwatch_event_rule.event_rule.arn}"
}
 output "name" {
  value = "${aws_cloudwatch_event_rule.event_rule.name}"
}