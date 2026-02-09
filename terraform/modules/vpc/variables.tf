variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "availability_zone" {
  description = "AZ to deploy subnets"
  type        = string
}

variable "name" {
  description = "The tag for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
}
