resource "aws_nat_gateway" "nat_gw" {
  allocation_id = "${var.nat_eip}"
  subnet_id     = "${var.nat_subnet_id}"

  tags {
    Name = "${var.nat_name}"
  }
}