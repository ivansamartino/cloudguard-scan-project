output "family" {
  value = "${aws_ecs_task_definition.task_definition.family}"
}

output "arn" {
  value = "${aws_ecs_task_definition.task_definition.arn}"
}

output "revision" {
  value = "${aws_ecs_task_definition.task_definition.revision}"
}
