output "original_route_table_id" {
  value = "${aws_main_route_table_association.rt_association.original_route_table_id}"
}