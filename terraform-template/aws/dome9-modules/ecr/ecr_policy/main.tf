resource "aws_ecr_repository_policy" "policy" {
  repository = "${var.repoisitory_name}"

  policy = "${var.policy}"
}