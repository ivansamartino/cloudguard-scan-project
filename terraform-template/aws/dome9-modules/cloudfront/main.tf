resource "aws_cloudfront_distribution" "s3_distribution" {
  origin {
    domain_name = "${var.domain_name}"
    origin_id   = "${var.origin_id}"

    s3_origin_config {
      origin_access_identity = ""
    }

  }

  enabled             = "${var.site_enable}"
  is_ipv6_enabled     = true
  comment             = "${var.comment}"
  default_root_object = "${var.default_root_object}"

  logging_config {
    include_cookies = false
    bucket          = "${var.logging_config_bucket}"
    prefix          = "${var.logging_config_prefix}"
  }

  default_cache_behavior {
    allowed_methods  = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "${var.default_cache_behavior_target_origin_id}"

    forwarded_values {
      query_string = "${var.forwarded_values_query_string}"

      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "allow-all"
    min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400
  }

  tags {
    Environment = "${var.env_tag}"
  }

  restrictions {
    geo_restriction {
      restriction_type = "${var.restriction_type}"
      locations        = []
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = false
    ssl_support_method             = "sni-only"
    acm_certificate_arn            = "${var.viewer_certificate_cloudfront_default_certificate}"
  }

  custom_error_response {
    error_code            = 403
    error_caching_min_ttl = 300
    response_code         = 200
    response_page_path    = "/index.html"
  }

  custom_error_response {
    error_code            = 404
    error_caching_min_ttl = 300
    response_code         = 200
    response_page_path    = "/index.html"
  }
}
