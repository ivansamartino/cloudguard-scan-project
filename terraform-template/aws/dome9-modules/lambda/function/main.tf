resource "aws_lambda_function" "lambda_function" {
  function_name    = "${var.function_name}"
  s3_bucket        = "${var.s3_bucket}"
  s3_key           = "${var.s3_key}"
  role             = "${var.role}"
  handler          = "${var.handler}"
  runtime          = "${var.runtime}"
  memory_size      = "${var.memory_size}"
  timeout          = "${var.timeout}"
  publish          = "${var.publish}"

  // vpc_config {
  //   subnet_ids          = ["${var.subnet_ids}"]
  //   security_group_ids  = ["${var.security_group_ids}"]
  //  }
}