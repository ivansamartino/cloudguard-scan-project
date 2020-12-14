resource "aws_kms_key" "key" {
  description         = "${var.description}"
  enable_key_rotation = false
  policy              = "${var.policy}"
  enabled             = true
}