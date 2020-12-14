output "iam_user_name" {
  value = "${aws_iam_user.iam_user.name}"
}

output "iam_user_login_password" {
  value = "${aws_iam_user_login_profile.iam_user_login.encrypted_password}"
}
