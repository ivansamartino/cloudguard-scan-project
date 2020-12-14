resource "aws_iam_user" "iam_user" {
  name = "${var.user_name}"
  path = "/"
}

resource "aws_iam_user_login_profile" "iam_user_login" {
    user    = "${aws_iam_user.iam_user.name}"
    pgp_key = "${var.key}"

    depends_on = ["aws_iam_user.iam_user"]
}

