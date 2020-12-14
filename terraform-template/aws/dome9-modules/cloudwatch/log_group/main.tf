resource "aws_cloudwatch_log_group" "log_group" {
  name = "${var.name}"

  tags {
    Application = "${var.tag_application}"
    Environment = "${var.tag_environment}"
  }
}
