resource "aws_sqs_queue" "queue" {
  name                      = "${var.name}"
  delay_seconds             = "${var.delay_seconds}"
  max_message_size          = "${var.max_message_size}"
  message_retention_seconds = "${var.message_retention_seconds}"
  
  tags {
    Name        = "${var.tag_name}"
    Environment = "${var.tag_environment}"
  }
}