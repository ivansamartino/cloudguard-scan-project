resource "aws_elasticsearch_domain" "domain" {
  domain_name           = "${var.domain_name}"
  elasticsearch_version = "${var.elasticsearch_version}"
  cluster_config {
    instance_type = "${var.instance_type}"
    instance_count = "${var.instance_count}"
  }
  ebs_options {
    ebs_enabled = "true"
    volume_size = "${var.volume_size}"
  }
  vpc_options {
    security_group_ids = "${var.security_group_ids}"
    subnet_ids = "${var.subnet_ids}"
  }
  advanced_options {
    "rest.action.multi.allow_explicit_index" = "true"
  }
  snapshot_options {
    automated_snapshot_start_hour = 0
  }
  tags {
    domain = "${var.domain_name}"
    env = "${var.env}"
  }

  access_policies = "${var.access_policy}"
  
}