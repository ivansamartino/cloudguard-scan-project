resource "aws_subnet" "subnet" {
  vpc_id     = "${var.vpc_id}"
  cidr_block = "${var.cidr_block}"
  availability_zone = "${var.availability_zone}"
  
  tags {
    Name = "${var.name}"
    env = "${var.env}"
    type = "${var.subnet_type}"
    component = "${var.component}"
  }
}