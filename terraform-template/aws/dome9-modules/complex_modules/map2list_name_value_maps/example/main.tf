locals {
  task_defenitoin_vars =
    {
      aaa = "AAA"
      bbb = "BBB"
	  ccc = "CCC"
    }
}

module "convert" {
  source = ".."
  input_map = "${local.task_defenitoin_vars}"
}

output "res" {
  value = "${module.convert.result}"
}

