
resource "aws_vpc" "vpc" {
  cidr_block = "${var.cidr_block}"

  tags {
    Name = "${var.name}"
    env = "${var.env}"
    microservice = "Role"
    central = "Role"
  }
}
