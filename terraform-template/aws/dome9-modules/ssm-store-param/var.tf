# Input variables

# strings
variable type        { default = "encrypt"         } #The type of SSM param, see local.type for available values
variable description { default = ""                }
variable param_store { default = "common"          } #One of the predefined SSM param name prefexes, see local.params_store for available values
variable key_prefix  { default = "alias/dome9/ssm" }
variable clobber     { default = false             }

# maps
variable params { default ={} } #Map of key=value pairs to store in SSM
variable config {
  default = {
    _env     = {}
    _owner   = { default = "unknown" }
    _project = { default = "unknown" }
  }
}
