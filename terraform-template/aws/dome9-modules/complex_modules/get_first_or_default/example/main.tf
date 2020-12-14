module "empty_list" {
  source = ".."
  input_list = []
  default = "def"
}

output "res" {
  value = "${module.empty_list.result}"
}

module "not_empty_list" {
  source = ".."
  input_list = ["first"]
  default = "def"
}

output "res1" {
  value = "${module.not_empty_list.result}"
}