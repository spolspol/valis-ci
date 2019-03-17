/**
 *
 * 
 *
 *    stack definiton 
 *   
 *
 */

variable "name" {
  description = "Name tag, e.g stack"
  default     = "stack"
}

variable "tier" {
  description = "Environment tag, e.g prod"
}

variable "sequence" {
  description = "Name tag, e.g stack"
  default     = "01"
}

variable "domain_name_servers" {
  description = "the internal DNS servers, defaults to the internal route53 server of the VPC"
  default     = ""
}

variable "public_domain_name" {
  description = "DNS postfix for public endpoints"
}

variable "region" {
  description = "the AWS region in which resources are created, you must set the availability_zones variable as well if you define this value to something other than the default"
  default     = "eu-west-1"
}

variable "logs_expiration_enabled" {
  default = false
}

variable "logs_expiration_days" {
  default = 30
}

variable "common_tags" {
  type        = "map"
  default     = {}
}

// The tier of the stack, e.g "prod".
output "tier" {
  value = "${var.name}-${var.tier}-${var.sequence}"
}
