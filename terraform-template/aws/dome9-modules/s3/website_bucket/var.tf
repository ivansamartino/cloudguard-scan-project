variable bucket {}

variable acl {
  default = "private"
}

variable policy {
  default = ""
}

variable region {
  default = "us-east-1"
}

variable website_index_document {
  default = "index.html"
}

variable website_error_document {
  default = "error.html"
}

variable versioning {
  default = false
}

variable log_bucket {}
variable log_bucket_prefix {}
