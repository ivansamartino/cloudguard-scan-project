# Input variables
variable "params" {
  type        = "map"
  description = "Map of parameter name=store type to retreive"
}

variable "config" {
  default = {
  _env     = {}
  _owner   = { default = "unknown" }
  _project = { default = "unknown" }
}
}