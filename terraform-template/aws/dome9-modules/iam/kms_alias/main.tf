resource "aws_kms_alias" "alias" {
  name          = "${var.name}"
  target_key_id = "${var.target_key_id}"
}
