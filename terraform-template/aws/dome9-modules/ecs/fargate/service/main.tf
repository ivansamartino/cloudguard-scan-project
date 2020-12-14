resource "aws_ecs_service" "service" {
  name            = "${var.name}"
  cluster         = "${var.cluster}"
  task_definition = "${var.task_definition}"
  desired_count   = "${var.desired_count}"

  launch_type = "FARGATE"

  network_configuration {
    subnets         = ["${var.subnets}"]
    security_groups = ["${var.security_groups}"]
  }
}
