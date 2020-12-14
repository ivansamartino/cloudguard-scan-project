
# Local variables
locals {
  suffix     = "${var.config["_env"] == "preqa" ? var.config["_project"] : var.config["_env"]}"
  ssm_prefix = "${var.config["_env"] == "preqa" ? "/${var.config["_project"]}" : ""}"
 params_store = {
    common          = "${local.ssm_prefix}/common/"
    db              = "${local.ssm_prefix}/common/db/"
    microservice    = "${local.ssm_prefix}/component/microservice/"
    central         = "${local.ssm_prefix}/component/central/"
    central_api     = "${local.ssm_prefix}/component/central_api/"
    schedulers      = "${local.ssm_prefix}/component/schedulers/"

    webapp       = "${local.ssm_prefix}/common/webapp/"

    inspect         = "${local.ssm_prefix}/inspect/common/"
    inspect_db      = "${local.ssm_prefix}/inspect/common/db/"
    inspect_central = "${local.ssm_prefix}/inspect/component/central/"
  }
}

data "aws_ssm_parameter" "this" {
  count = "${length(keys(var.params))}"

  name = "${local.params_store[element(values(var.params), count.index)]}${element(keys(var.params), count.index)}"
}

data "null_data_source" "this" {
  inputs = "${zipmap( keys(var.params),data.aws_ssm_parameter.this.*.value)}"
}
