resource "aws_ecs_cluster" "cluster" {
  name = "${var.name}"

  capacity_providers = ["FARGATE", "FARGATE_SPOT"]

  default_capacity_provider_strategy {
    capacity_provider = "${var.default_capacity_provider}"
    weight            = "${var.default_capacity_provider_weight}"
    base              = "${var.default_capacity_provider_base}"
  }

}
