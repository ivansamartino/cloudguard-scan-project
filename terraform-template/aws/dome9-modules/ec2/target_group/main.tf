resource "aws_lb_target_group" "alb_target_group" {
  name        = "${var.alb_target_group_name}"
  port        = "${var.alb_target_group_port}"
  protocol    = "${var.alb_target_group_protocol}"
  vpc_id      = "${var.alb_target_group_vpc_id}"
  target_type = "${var.alb_target_group_target_type}"
}
