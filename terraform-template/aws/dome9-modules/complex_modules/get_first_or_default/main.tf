variable "input_list" {
	type = "list"
}

variable "default" {

}

output "result" {
  value = "${element(concat(var.input_list, list(var.default)), 0)}"
}

