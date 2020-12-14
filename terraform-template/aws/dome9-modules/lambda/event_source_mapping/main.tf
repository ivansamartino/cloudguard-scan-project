resource "aws_lambda_event_source_mapping" "event_source_mapping" {
  batch_size        = "${var.batch_size}"
  event_source_arn  = "${var.event_source_arn}"
  enabled           = "${var.enabled}"
  function_name     = "${var.function_name}"
  starting_position = "${var.starting_position}"
}