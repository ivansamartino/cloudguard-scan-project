variable origin_id {}

variable site_enable {
  default = "true"
}

variable comment {}

variable logging_config_bucket {}

variable logging_config_prefix {}

variable domain_name {}

variable env_tag {}

variable default_root_object {
  default = "index.html"
}

variable default_cache_behavior_target_origin_id {}

variable viewer_certificate_cloudfront_default_certificate {}

variable forwarded_values_query_string {
  default = true
}

variable restriction_type {
  default = "none"
}
