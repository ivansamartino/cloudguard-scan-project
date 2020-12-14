resource "aws_iam_account_password_policy" "strict" {
  minimum_password_length        = "${var.minimum_password_length}"
  max_password_age               = 90
  password_reuse_prevention      = 5
  require_lowercase_characters   = true
  require_numbers                = false
  require_uppercase_characters   = false
  require_symbols                = false
  allow_users_to_change_password = true
}
