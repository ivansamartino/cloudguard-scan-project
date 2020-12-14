variable "name" {}
variable "shard_count" {}
variable "retention_period" {}
variable "encryption_type" {
    default = "NONE"
}
variable "kms_key_id" {
    default = ""
}
variable "shard_level_metrics" {
   default = [
    "IncomingBytes",
    "OutgoingBytes",
  ]
}