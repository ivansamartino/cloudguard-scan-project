resource "aws_ecs_task_definition" "task_definition" {
  family                = "${var.family}"
  container_definitions = "${var.container_definitions}"

  task_role_arn            = "${var.task_role_arn}"
  execution_role_arn       = "${var.execution_role_arn}"
  network_mode             = "awsvpc"
  cpu                      = "${var.cpu}"
  memory                   = "${var.memory}"
  requires_compatibilities = ["FARGATE"]
}
