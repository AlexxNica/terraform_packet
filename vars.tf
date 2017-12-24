variable "auth_token" {
  description = "Your Packet API key"
}

variable "facility" {
  description = "Packet facility: US East(ewr1), US West(sjc1), or EU(ams1). Default: ewr1"
  default = "ewr1"
}

variable "plan" {
  description = "Instance Type of Agent"
  default = "baremetal_0"
}
