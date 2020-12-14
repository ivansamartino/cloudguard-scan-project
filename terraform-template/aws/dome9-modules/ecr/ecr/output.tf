output "ecr_name" {
  value = "${aws_ecr_repository.ecr_repository.name}"
}

output "ecr_arn" {
  value = "${aws_ecr_repository.ecr_repository.arn}"
}

output "ecr_registry_id" {
  value = "${aws_ecr_repository.ecr_repository.registry_id}"
}

output "ecr_repository_url" {
  value = "${aws_ecr_repository.ecr_repository.repository_url}"
}