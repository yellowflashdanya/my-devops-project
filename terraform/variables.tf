variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "my-vpc"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "The list of Availability Zones"
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b"]
}

variable "cluster_name" {
  description = "The name of Cluster"
  type        = string
  default     = "my-eks-cluster"
}

variable "bucket_name" {
  description = "Name of S3 Bucket"
  type        = string
  default     = "danya-devops-state-bucket-2412"
}

variable "table_name" {
  description = "The name of DynamoDB table for state locking"
  type        = string
  default     = "my-dynamodb-table-for-state-locking"
}
