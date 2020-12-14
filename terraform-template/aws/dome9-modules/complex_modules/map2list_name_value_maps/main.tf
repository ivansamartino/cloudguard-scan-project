variable "input_map" {
	type = "map"
}
data "null_data_source" "self" {
  count = "${length(keys(var.input_map))}"

  inputs = {
	  name = "${element(keys(var.input_map), count.index)}"
	  value = "${element(values(var.input_map), count.index)}"
  }
}
output "result" {
  value = "${data.null_data_source.self.*.outputs}"
}

