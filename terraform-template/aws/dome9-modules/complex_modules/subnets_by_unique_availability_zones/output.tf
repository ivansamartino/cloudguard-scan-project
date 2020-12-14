output "subnet_per_az" {
  value = "${data.aws_subnet.private_distinct.*.id}"
}
