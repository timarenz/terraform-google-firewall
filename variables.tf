variable "environment_name" {
  type = string
}

variable "project" {
  type = string
}

variable "name" {
  type = string
}

variable "network" {
  type = string
}

variable "allow_rules" {
  type    = list
  default = null
  # Example for allow_rules
  # default = [{
  #   protocol = "tcp"
  #   ports    = ["8300-8301"]
  #   }, {
  #   protocol = "udp"
  #   ports    = ["8302"]
  # }]
}

variable "deny_rules" {
  type    = list
  default = null
}

variable "source_ranges" {
  type    = list(string)
  default = null
}
variable "destination_ranges" {
  type    = list(string)
  default = null
}

variable "source_tags" {
  type    = list(string)
  default = null
}

variable "target_tags" {
  type    = list(string)
  default = null
}

variable "priority" {
  type    = number
  default = null
}


