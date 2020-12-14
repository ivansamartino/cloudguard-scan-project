variable orig_map {type="map"}
variable cond {}
locals{
  big_map ={
    "the_map" = ["${var.orig_map}"],
    "empty_map" = [{}]
  }
  output = "${local.big_map[var.cond ? "the_map" : "empty_map"]}"
}

output "result_map" {
  value = "${local.output}"
}
