variable "bucket" {}

variable "acl" {
  default = "private"
}

variable "region" {
  default = "us-east-1"
}

variable "policy" {
  default = ""
}

variable "log_bucket" {}
variable "log_bucket_prefix" {}

variable "versioning" {
  default = false
}

variable "tag_name" {}
variable "tag_env" {}
