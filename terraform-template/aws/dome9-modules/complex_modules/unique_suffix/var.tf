data "aws_caller_identity" "current" {}

locals {
account_list = [
	"317307795746",
	"634729597623"
]
  account_id = "${data.aws_caller_identity.current.account_id}"
  suffix = "${ contains(local.account_list, local.account_id) ? "" : "-${local.account_id}"}"
  is_preqa = "${ contains(local.account_list, local.account_id) ? false : true}"
  enable_ecs_managed_tags = "${ contains(local.account_list, local.account_id) ? true : false}"
  ecs_propagate_tags = "${ contains(local.account_list, local.account_id) ? "SERVICE" : ""}"
}
