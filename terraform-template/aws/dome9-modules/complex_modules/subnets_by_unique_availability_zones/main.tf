
data "aws_subnet" "private" {
  count = "${var.num_subnets}"
  id = "${var.subnet_ids[count.index]}"
}

locals {
  distinct_availability_zones = "${distinct(data.aws_subnet.private.*.availability_zone_id)}"
}

data "aws_subnet_ids" "private_by_availability_zones" {
  count = "${var.num_availability_zones}"
  vpc_id = "${var._vpc_id}"

  filter {
    name = "availability-zone-id"
    values = ["${local.distinct_availability_zones[count.index]}"]
  }
  filter {
    name = "subnet-id"
    values = ["${var.subnet_ids}"]
  }
}

data "aws_subnet" "private_distinct" {
  count = "${var.num_availability_zones}"
  id = "${element(data.aws_subnet_ids.private_by_availability_zones.*.ids[count.index],0)}"
}
