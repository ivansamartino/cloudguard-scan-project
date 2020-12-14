variable "alb_target_group_name" {}
variable "alb_target_group_port" {}
variable "alb_target_group_protocol" {}
variable "alb_target_group_vpc_id" {}

variable "alb_target_group_target_type" {
  default = "instance"
}
