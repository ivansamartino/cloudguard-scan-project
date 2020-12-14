variable "alb_name" {}
variable "alb_internal" {
    default = false
}
variable alb_security_groups {
    type = "list"
}
variable alb_subnets {
    type = "list"
    
}
variable alb_enable_deletion_protection {
    default = true
}

variable alb_access_logs_bucket {}
variable alb_access_logs_prefix {}
variable alb_access_logs_enabled {
    default = true
}

variable alb_tag_environment {}

