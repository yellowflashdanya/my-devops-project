variable "name" {
  description = "The tag for the VPC"
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "availability_zones" {
  description = "AZ to deploy subnets"
  type        = list(string)
}
