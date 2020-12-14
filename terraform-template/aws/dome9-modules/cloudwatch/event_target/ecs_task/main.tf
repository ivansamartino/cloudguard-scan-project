resource "aws_cloudwatch_event_target" "event_target" {
  rule      = "${var.rule}"
  target_id = "${var.target_id}"
  arn       = "${var.cluster_arn}"
  role_arn  = "${var.role_arn}"

  ecs_target = {
    task_count          = "${var.task_count}"
    task_definition_arn = "${var.task_definition_arn}"
  }
}
