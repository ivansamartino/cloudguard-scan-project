resource "aws_lb" "alb" {
  name            = "${var.alb_name}"
  internal        = "${var.alb_internal}"
  security_groups = ["${var.alb_security_groups}"]
  subnets         = ["${var.alb_subnets}"]

  enable_deletion_protection = "${var.alb_enable_deletion_protection}"

  access_logs {
    bucket  = "${var.alb_access_logs_bucket}"
    prefix  = "${var.alb_access_logs_prefix}"
    enabled = "${var.alb_access_logs_enabled}"
  }

  tags {
    Environment = "${var.alb_tag_environment}"
  }
}